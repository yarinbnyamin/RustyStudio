# Rusty Studio 🦀🎮

**Run a tiny game studio that's learning Rust.** Train your team, code the features of real games in real
Rust, survive the release crunch and ship. Every feature you write is compiled by the real Rust compiler
to WebAssembly and runs the game you're building, live in your browser.

Rusty Studio is the "game" fork of [PlayRusty](https://github.com/yarinbnyamin/PlayRusty), which teaches
the same [rustlings](https://github.com/rust-lang/rustlings) path as a classic lesson-and-puzzle
adventure.

> 🚧 **In development.** The first chapter (Variables → *Crab Pong*) is being built. See
> [the one-page brief](design/game-brief.md) and [the full design](design/rusty-studio-design.md).

## How it works

You assign a trained dev to a feature card (for example "Paddles don't move") and fix the Rust function
behind it. The game sends your code to the [Rust Playground](https://play.rust-lang.org), gets
WebAssembly back, and plugs your function into the running game. A wrong answer that still compiles is
visible in the game too: you might get paddles that fly off the court.

## Development

You need Node 22.4+ (24 recommended).

```bash
npm install
npm run dev     # http://localhost:5173/RustyStudio/
npm test        # unit tests
npm run build   # static site in dist/
```

This project uses the [Claude Code Game Studios](https://github.com/Donchitos/Claude-Code-Game-Studios)
template for its development process. Start Claude Code in this folder and run `/start`. Its agents,
skills and hooks only load when Claude Code starts here.

## Credits

- Curriculum: [rustlings](https://github.com/rust-lang/rustlings) by the rustlings team and contributors (MIT).
- Code reused from [PlayRusty](https://github.com/yarinbnyamin/PlayRusty) (MIT).
- Development process: [Claude Code Game Studios](https://github.com/Donchitos/Claude-Code-Game-Studios)
  by Donchitos (MIT).
- Compiler: the official [Rust Playground](https://play.rust-lang.org). WAT to wasm conversion uses
  [wabt.js](https://github.com/AssemblyScript/wabt.js) (Apache-2.0).
- Ferris the crab is the unofficial Rust mascot, released into the public domain by Karen Rustad Tölva.

## License

[MIT](LICENSE)
