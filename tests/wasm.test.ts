// @vitest-environment node
import { readFileSync } from "node:fs";
import { beforeAll, describe, expect, it } from "vitest";
import { runChecks } from "../src/rust/checks";
import {
  COMPILE_URL,
  RustCrash,
  base64ToBytes,
  buildRust,
  bytesToBase64,
  compileToWat,
  loadRustModule,
  sanitizeWat,
  watToWasm,
  wrapForWasm,
  type RustFnSig,
  type RustModule,
} from "../src/rust/wasm";
import { BRIDGE_DOWN_MESSAGE } from "../src/playground/client";

// tests/fixtures/player.wat is real Playground output (stable, 2026-11-01) for these functions:
//   paddle_speed() -> 6.0, score_after_goal(s) -> s + 1, ball_color() -> 0xFF8800,
//   is_winner(s) -> s >= 5, crash(d) -> 100 / d (panics on 0, so std's panic code is included).
const WAT = readFileSync(new URL("./fixtures/player.wat", import.meta.url), "utf8");
const SIG = {
  paddle: { name: "paddle_speed", params: [], returns: "f32" },
  score: { name: "score_after_goal", params: ["i32"], returns: "i32" },
  color: { name: "ball_color", params: [], returns: "u32" },
  winner: { name: "is_winner", params: ["i32"], returns: "bool" },
  crash: { name: "crash", params: ["i32"], returns: "i32" },
} satisfies Record<string, RustFnSig>;

let module: RustModule;
beforeAll(async () => {
  module = await loadRustModule(await watToWasm(WAT));
});

const fetchReturning = (body: object, capture?: (init?: RequestInit) => void) =>
  (async (_input: RequestInfo | URL, init?: RequestInit) => {
    capture?.(init);
    return new Response(JSON.stringify(body));
  }) as typeof fetch;

describe("wrapForWasm", () => {
  it("appends an extern shim per function after the player's code", () => {
    const wrapped = wrapForWasm("fn score_after_goal(score: i32) -> i32 { score + 1 }", [SIG.score]);
    expect(wrapped.startsWith("fn score_after_goal(score: i32) -> i32 { score + 1 }\n")).toBe(true);
    expect(wrapped).toContain(
      '#[unsafe(no_mangle)]\npub extern "C" fn __rs_score_after_goal(a0: i32) -> i32 {\n    score_after_goal(a0)\n}',
    );
  });
});

describe("sanitizeWat", () => {
  it("drops annotations and renames quoted identifiers consistently", () => {
    const wat = [
      '(module (func $"a::b" (call $"a::b") (call $"c d"))',
      '  (data (i32.const 0) "keep $\\"this\\" (@custom x)")',
      '  (; (@custom "in a comment") ;)',
      '  (@producers (language "Rust" ""))',
      '  (@custom "target_features" (after code) "\\08+")',
      ")",
    ].join("\n");
    expect(sanitizeWat(wat)).toBe(
      [
        "(module (func $__q0 (call $__q0) (call $__q1))",
        '  (data (i32.const 0) "keep $\\"this\\" (@custom x)")',
        '  (; (@custom "in a comment") ;)',
        "  ",
        "  ",
        ")",
      ].join("\n"),
    );
  });
});

describe("compiled player module", () => {
  it("converts real rustc output, std panic code included", () => {
    expect(module.bytes.length).toBeGreaterThan(0);
    expect(module.has("paddle_speed")).toBe(true);
    expect(module.has("nope")).toBe(false);
  });

  it("calls functions with each boundary type", () => {
    expect(module.call(SIG.paddle, [])).toBe(6);
    expect(module.call(SIG.score, [4])).toBe(5);
    expect(module.call(SIG.color, [])).toBe(0xff8800);
    expect(module.call(SIG.winner, [5])).toBe(true);
    expect(module.call(SIG.winner, [2])).toBe(false);
  });

  it("turns a panic into a RustCrash", () => {
    expect(module.call(SIG.crash, [5])).toBe(20);
    expect(() => module.call(SIG.crash, [0])).toThrow(RustCrash);
    expect(() => module.call(SIG.crash, [0])).toThrow("💥 Your game crashed in crash");
  });

  it("survives a round trip through base64, as in the save", async () => {
    const reloaded = await loadRustModule(base64ToBytes(bytesToBase64(module.bytes)));
    expect(reloaded.call(SIG.score, [0])).toBe(1);
  });
});

describe("runChecks", () => {
  it("passes when every call matches, comparing f32 at f32 precision", () => {
    expect(runChecks(module, SIG.paddle, [{ args: [], expect: 6 }]).passed).toBe(true);
    const report = runChecks(module, SIG.score, [{ args: [0], expect: 1 }, { args: [4], expect: 5 }]);
    expect(report.passed).toBe(true);
  });

  it("reports wrong answers with the actual value", () => {
    const report = runChecks(module, SIG.score, [{ args: [0], expect: 1 }, { args: [4], expect: 9 }]);
    expect(report.passed).toBe(false);
    expect(report.outcomes[1]).toEqual({ check: { args: [4], expect: 9 }, status: "fail", actual: 5 });
  });

  it("reports crashes and missing functions", () => {
    const crash = runChecks(module, SIG.crash, [{ args: [0], expect: 0 }]);
    expect(crash.outcomes[0].status).toBe("crash");
    const missing = runChecks(module, { name: "win_score", params: [], returns: "i32" }, [{ args: [], expect: 5 }]);
    expect(missing).toEqual({
      passed: false,
      outcomes: [{ check: { args: [], expect: 5 }, status: "crash", message: "Your code has no function called win_score." }],
    });
  });
});

describe("compileToWat and buildRust", () => {
  it("asks the Playground for a stable cdylib compiled to wasm", async () => {
    let init: RequestInit | undefined;
    await compileToWat("fn f() {}", { fetchFn: fetchReturning({ success: true, code: "(module)", stderr: "" }, (i) => (init = i)) });
    expect(JSON.parse(String(init?.body))).toMatchObject({
      channel: "stable",
      mode: "release",
      edition: "2024",
      crateType: "cdylib",
      target: "wasm",
      code: "fn f() {}",
    });
  });

  it("returns the compiler's errors when the code doesn't compile", async () => {
    const fetchFn = fetchReturning({ success: false, code: "", stderr: "error[E0425]: cannot find value `speed`" });
    expect(await buildRust("fn paddle_speed() -> f32 { speed }", [SIG.paddle], { fetchFn })).toEqual({
      ok: true,
      success: false,
      stderr: "error[E0425]: cannot find value `speed`",
    });
  });

  it("builds a working module from the Playground's WAT", async () => {
    const fetchFn = fetchReturning({ success: true, code: WAT, stderr: "warning: unused" });
    const result = await buildRust("…", [SIG.score], { fetchFn });
    expect(result.ok && result.success && result.module.call(SIG.score, [1])).toBe(2);
  });

  it("passes bridge errors through", async () => {
    const fetchFn = (async () => new Response("busy", { status: 503 })) as typeof fetch;
    expect(await buildRust("…", [SIG.score], { fetchFn })).toEqual({ ok: false, reason: "http", message: BRIDGE_DOWN_MESSAGE });
  });

  it("posts to the compile endpoint", async () => {
    let url = "";
    const fetchFn = (async (input: RequestInfo | URL) => {
      url = String(input);
      return new Response(JSON.stringify({ success: false, stderr: "" }));
    }) as typeof fetch;
    await compileToWat("", { fetchFn });
    expect(url).toBe(COMPILE_URL);
  });
});
