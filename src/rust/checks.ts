import { RustCrash, type RustFnSig, type RustModule, type WasmValue } from "./wasm";

/** One call the card's function must answer correctly, e.g. `score_after_goal(4)` must be 5. */
export interface Check {
  args: WasmValue[];
  expect: WasmValue;
}

export type CheckOutcome =
  | { check: Check; status: "pass"; actual: WasmValue }
  | { check: Check; status: "fail"; actual: WasmValue }
  | { check: Check; status: "crash"; message: string };

export interface CheckReport {
  passed: boolean;
  outcomes: CheckOutcome[];
}

function same(type: RustFnSig["returns"], actual: WasmValue, expected: WasmValue): boolean {
  // f32 results come back rounded to f32, so compare against the f32 nearest the expected value.
  if (type === "f32") return actual === Math.fround(Number(expected));
  return actual === expected;
}

/** Runs every check against the compiled function. Used in the browser and by verify:rust. */
export function runChecks(module: RustModule, sig: RustFnSig, checks: Check[]): CheckReport {
  if (!module.has(sig.name)) {
    const message = `Your code has no function called ${sig.name}.`;
    return { passed: false, outcomes: checks.map((check) => ({ check, status: "crash", message })) };
  }
  const outcomes = checks.map((check): CheckOutcome => {
    try {
      const actual = module.call(sig, check.args);
      return { check, status: same(sig.returns, actual, check.expect) ? "pass" : "fail", actual };
    } catch (error) {
      if (error instanceof RustCrash) return { check, status: "crash", message: error.message };
      throw error;
    }
  });
  return { passed: outcomes.every((o) => o.status === "pass"), outcomes };
}
