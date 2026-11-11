<!-- PROTOTYPE - NOT FOR PRODUCTION -->
<!-- Question: shared helper for the A/B core-loop prototypes -->
<!-- Date: 2026-11-01 -->
# Shared prototype helper

`rust.js` is a trimmed copy of `src/rust/wasm.ts`. It compiles Rust on the Playground to wasm, then
uses wabt to load it. The A and B prototypes both use it. It isn't a prototype itself, and it gets
deleted together with them.
