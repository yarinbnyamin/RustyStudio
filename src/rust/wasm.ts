import { postPlayground, type BridgeError, type RequestOptions } from "../playground/client";

export const COMPILE_URL = "https://play.rust-lang.org/compile";

/** Types that may cross the wasm boundary. `u32` and `bool` travel as wasm i32. */
export type WasmType = "i32" | "u32" | "f32" | "bool";
export type WasmValue = number | boolean;

/** A player-written Rust function the game calls, e.g. `score_after_goal(score: i32) -> i32`. */
export interface RustFnSig {
  name: string;
  params: WasmType[];
  returns: WasmType;
}

export type CompileResult =
  | { ok: true; success: true; wat: string; stderr: string }
  | { ok: true; success: false; stderr: string }
  | BridgeError;

/** Thrown by `RustModule.call` when the player's code panics (a wasm trap). */
export class RustCrash extends Error {
  constructor(fnName: string, cause: unknown) {
    super(`💥 Your game crashed in ${fnName}: ${cause instanceof Error ? cause.message : String(cause)}`);
    this.name = "RustCrash";
  }
}

export interface RustModule {
  /** The wasm binary, kept so a passing card can be saved and reloaded without recompiling. */
  readonly bytes: Uint8Array;
  has(name: string): boolean;
  /** Calls a player function by its Rust name. Throws RustCrash if the code panics. */
  call(sig: RustFnSig, args: WasmValue[]): WasmValue;
}

export type BuildResult =
  | { ok: true; success: true; module: RustModule; stderr: string }
  | { ok: true; success: false; stderr: string }
  | BridgeError;

const exportName = (name: string) => `__rs_${name}`;

/**
 * Appends `extern "C"` export shims for each function, so the player writes plain Rust
 * and never sees `unsafe` or FFI.
 */
export function wrapForWasm(code: string, fns: RustFnSig[]): string {
  const shims = fns.map(({ name, params, returns }) => {
    const args = params.map((type, i) => `a${i}: ${type}`).join(", ");
    const pass = params.map((_, i) => `a${i}`).join(", ");
    return `#[unsafe(no_mangle)]\npub extern "C" fn ${exportName(name)}(${args}) -> ${returns} {\n    ${name}(${pass})\n}`;
  });
  return `${code}\n\n// --- Rusty Studio export shims ---\n${shims.join("\n\n")}\n`;
}

/**
 * Makes rustc's WAT readable by wabt: drops the `(@producers …)` and `(@custom …)` annotations, and
 * renames quoted identifiers such as `$"<&str as core::fmt::Display>::fmt"` (which std's panic code
 * brings in) to plain ones. Strings and comments are copied untouched.
 */
export function sanitizeWat(wat: string): string {
  const renamed = new Map<string, string>();
  const out: string[] = [];
  let copyFrom = 0;
  let i = 0;
  const flush = (to: number) => out.push(wat.slice(copyFrom, to));
  while (i < wat.length) {
    if (wat.startsWith("(@producers", i) || wat.startsWith("(@custom", i)) {
      flush(i);
      i = skipSExpression(wat, i);
      copyFrom = i;
    } else if (wat.startsWith('$"', i)) {
      flush(i);
      const end = skipString(wat, i + 1);
      const quoted = wat.slice(i + 1, end);
      if (!renamed.has(quoted)) renamed.set(quoted, `$__q${renamed.size}`);
      out.push(renamed.get(quoted) as string);
      i = end;
      copyFrom = i;
    } else if (wat[i] === '"') {
      i = skipString(wat, i);
    } else if (wat.startsWith(";;", i)) {
      const eol = wat.indexOf("\n", i);
      i = eol === -1 ? wat.length : eol;
    } else if (wat.startsWith("(;", i)) {
      const close = wat.indexOf(";)", i + 2);
      i = close === -1 ? wat.length : close + 2;
    } else {
      i += 1;
    }
  }
  flush(wat.length);
  return out.join("");
}

/** Returns the index just past the string literal whose opening quote is at `start`. */
function skipString(text: string, start: number): number {
  for (let i = start + 1; i < text.length; i += 1) {
    if (text[i] === "\\") i += 1;
    else if (text[i] === '"') return i + 1;
  }
  return text.length;
}

/** Returns the index just past the balanced s-expression starting at `start`, skipping string contents. */
function skipSExpression(text: string, start: number): number {
  let depth = 0;
  for (let i = start; i < text.length; i += 1) {
    const c = text[i];
    if (c === '"') i = skipString(text, i) - 1;
    else if (c === "(") depth += 1;
    else if (c === ")") {
      depth -= 1;
      if (depth === 0) return i + 1;
    }
  }
  return text.length;
}

/** Compiles wrapped Rust to WebAssembly text on the Playground. */
export async function compileToWat(code: string, options: RequestOptions = {}): Promise<CompileResult> {
  const body = {
    channel: "stable",
    mode: "release",
    edition: "2024",
    crateType: "cdylib",
    tests: false,
    code,
    target: "wasm",
    assemblyFlavor: "att",
    demangleAssembly: "demangle",
    processAssembly: "filter",
    backtrace: false,
  };
  const result = await postPlayground<{ success?: boolean; code?: string; stderr?: string }>(COMPILE_URL, body, options);
  if (!result.ok) return result;
  const { success, code: wat, stderr = "" } = result.data;
  return success === true && wat ? { ok: true, success: true, wat, stderr } : { ok: true, success: false, stderr };
}

let wabtLoading: Promise<Awaited<ReturnType<typeof import("wabt")>>> | null = null;

/** Converts WebAssembly text to a binary. wabt (~1.2 MB) loads on first use. */
export async function watToWasm(wat: string): Promise<Uint8Array> {
  wabtLoading ??= import("wabt").then((mod) => mod.default());
  const wabt = await wabtLoading;
  const parsed = wabt.parseWat("player.wat", sanitizeWat(wat), {
    multi_value: true,
    mutable_globals: true,
    sat_float_to_int: true,
    sign_extension: true,
    bulk_memory: true,
    reference_types: true,
  });
  try {
    return parsed.toBinary({}).buffer;
  } finally {
    parsed.destroy();
  }
}

function fromWasm(type: WasmType, value: unknown): WasmValue {
  const n = Number(value);
  if (type === "bool") return n !== 0;
  if (type === "u32") return n >>> 0;
  return n;
}

function toWasm(type: WasmType, value: WasmValue): number {
  if (type === "bool") return value ? 1 : 0;
  return Number(value);
}

/** Instantiates a compiled player module. The module gets no imports. */
export async function loadRustModule(bytes: Uint8Array): Promise<RustModule> {
  // Async compile: browsers refuse to compile large modules synchronously on the main thread.
  const instance = await WebAssembly.instantiate(await WebAssembly.compile(bytes as BufferSource), {});
  const exports = instance.exports as Record<string, unknown>;
  return {
    bytes,
    has: (name) => typeof exports[exportName(name)] === "function",
    call(sig, args) {
      const fn = exports[exportName(sig.name)];
      if (typeof fn !== "function") throw new Error(`The module has no function ${sig.name}`);
      try {
        return fromWasm(sig.returns, fn(...sig.params.map((type, i) => toWasm(type, args[i]))));
      } catch (error) {
        if (error instanceof WebAssembly.RuntimeError) throw new RustCrash(sig.name, error);
        throw error;
      }
    },
  };
}

/** The whole pipeline: wrap → compile on the Playground → WAT to wasm → instantiate. */
export async function buildRust(code: string, fns: RustFnSig[], options: RequestOptions = {}): Promise<BuildResult> {
  const compiled = await compileToWat(wrapForWasm(code, fns), options);
  if (!compiled.ok || !compiled.success) return compiled;
  const module = await loadRustModule(await watToWasm(compiled.wat));
  return { ok: true, success: true, module, stderr: compiled.stderr };
}

/** Base64 helpers for keeping a passing module in the save. */
export function bytesToBase64(bytes: Uint8Array): string {
  let binary = "";
  for (const byte of bytes) binary += String.fromCharCode(byte);
  return btoa(binary);
}

export function base64ToBytes(text: string): Uint8Array {
  return Uint8Array.from(atob(text), (c) => c.charCodeAt(0));
}
