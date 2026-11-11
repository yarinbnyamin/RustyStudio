// PROTOTYPE - NOT FOR PRODUCTION
// Question: shared by the two core-loop prototypes. Compiles player Rust to wasm on the Playground.
// Date: 2026-11-01
// A trimmed copy of src/rust/wasm.ts (prototypes never import production code).
import wabtInit from "wabt";

const shim = (f) =>
  `#[unsafe(no_mangle)]\npub extern "C" fn __rs_${f.name}(${f.params.map((t, i) => `a${i}: ${t}`).join(", ")}) -> ${f.returns} {\n    ${f.name}(${f.params.map((_, i) => `a${i}`).join(", ")})\n}`;

function sanitizeWat(wat) {
  const names = new Map();
  let out = "";
  let i = 0;
  const skipString = (s) => {
    for (let j = s + 1; j < wat.length; j++) {
      if (wat[j] === "\\") j++;
      else if (wat[j] === '"') return j + 1;
    }
    return wat.length;
  };
  while (i < wat.length) {
    if (wat.startsWith("(@producers", i) || wat.startsWith("(@custom", i)) {
      let depth = 0;
      for (; i < wat.length; i++) {
        if (wat[i] === '"') i = skipString(i) - 1;
        else if (wat[i] === "(") depth++;
        else if (wat[i] === ")" && --depth === 0) { i++; break; }
      }
    } else if (wat.startsWith('$"', i)) {
      const end = skipString(i + 1);
      const key = wat.slice(i + 1, end);
      if (!names.has(key)) names.set(key, `$__q${names.size}`);
      out += names.get(key);
      i = end;
    } else if (wat[i] === '"') {
      const end = skipString(i);
      out += wat.slice(i, end);
      i = end;
    } else {
      out += wat[i++];
    }
  }
  return out;
}

let wabt = null;

/** Returns { ok, error?, call(name, ...args) }. `fns` = [{ name, params: ["i32"], returns: "f32" }]. */
export async function compileRust(code, fns) {
  let res;
  try {
    res = await fetch("https://play.rust-lang.org/compile", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        channel: "stable", mode: "release", edition: "2024", crateType: "cdylib", tests: false,
        code: `${code}\n\n${fns.map(shim).join("\n\n")}\n`,
        target: "wasm", assemblyFlavor: "att", demangleAssembly: "demangle", processAssembly: "filter", backtrace: false,
      }),
    }).then((r) => r.json());
  } catch {
    return { ok: false, error: "The compiler bridge is down. Check your connection and try again." };
  }
  if (!res.success || !res.code) return { ok: false, error: cleanErrors(res.stderr || "Compile failed.") };
  wabt ??= await wabtInit();
  const mod = wabt.parseWat("p.wat", sanitizeWat(res.code), { multi_value: true, mutable_globals: true, sat_float_to_int: true, sign_extension: true, bulk_memory: true, reference_types: true });
  const bytes = mod.toBinary({}).buffer;
  mod.destroy();
  const instance = await WebAssembly.instantiate(await WebAssembly.compile(bytes), {});
  const types = Object.fromEntries(fns.map((f) => [f.name, f.returns]));
  return {
    ok: true,
    call(name, ...args) {
      const v = instance.exports[`__rs_${name}`](...args);
      return types[name] === "u32" ? v >>> 0 : types[name] === "bool" ? v !== 0 : v;
    },
  };
}

// Hide cargo's progress lines and the shim section from the player.
function cleanErrors(stderr) {
  return stderr
    .split("\n")
    .filter((l) => !/^\s*(Compiling|Finished|Running)\b/.test(l))
    .join("\n")
    .trim();
}
