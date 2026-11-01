export const PLAYGROUND_URL = "https://play.rust-lang.org/execute";
export const BRIDGE_DOWN_MESSAGE = "The compiler bridge is down. Check your connection and try again.";
const TIMEOUT_MESSAGE = "The compiler took too long to answer. Try again in a moment.";

export type BridgeError = { ok: false; reason: "network" | "timeout" | "http"; message: string };

export type RunResult = { ok: true; success: boolean; stdout: string; stderr: string } | BridgeError;

export interface RequestOptions {
  timeoutMs?: number;
  fetchFn?: typeof fetch;
}

export interface RunOptions extends RequestOptions {
  tests: boolean;
}

interface PlaygroundResponse {
  success?: boolean;
  stdout?: string;
  stderr?: string;
}

/** POSTs a JSON body to a Playground endpoint, turning HTTP, network and timeout failures into a BridgeError. */
export async function postPlayground<T>(url: string, body: object, options: RequestOptions = {}): Promise<{ ok: true; data: T } | BridgeError> {
  const { timeoutMs = 20_000 } = options;
  const fetchFn = options.fetchFn ?? globalThis.fetch.bind(globalThis);
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), timeoutMs);
  try {
    const response = await fetchFn(url, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(body),
      signal: controller.signal,
    });
    if (!response.ok) return { ok: false, reason: "http", message: BRIDGE_DOWN_MESSAGE };
    return { ok: true, data: (await response.json()) as T };
  } catch {
    if (controller.signal.aborted) return { ok: false, reason: "timeout", message: TIMEOUT_MESSAGE };
    return { ok: false, reason: "network", message: BRIDGE_DOWN_MESSAGE };
  } finally {
    clearTimeout(timer);
  }
}

export async function runCode(code: string, options: RunOptions): Promise<RunResult> {
  const body = { channel: "stable", mode: "debug", edition: "2024", crateType: "bin", tests: options.tests, code, backtrace: false };
  const result = await postPlayground<PlaygroundResponse>(PLAYGROUND_URL, body, options);
  if (!result.ok) return result;
  const data = result.data;
  return { ok: true, success: data.success === true, stdout: data.stdout ?? "", stderr: data.stderr ?? "" };
}
