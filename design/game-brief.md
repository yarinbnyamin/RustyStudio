# Game Brief: Rusty Studio

**One-sentence pitch:** Run a tiny 3D game studio whose team is learning Rust, and ship real games by writing real Rust that the real compiler turns into the game playing on your studio's TV.

Full design: `design/rusty-studio-design.md`. This brief covers the chapter 1 demo only: Variables → Crab Pong.
Prototype evidence: `prototypes/index.md`. Code the game (A) was picked over automating the studio (B), then pivoted into a 3D studio (A2, PROCEED).

## Core loop
- In a cozy 3D studio (three.js), devs sit at their desks with speech bubbles naming the bug in their part of Crab Pong. The cause is shown, not just the symptom: "our paddles have speed = 0".
- Before a new topic, Ferris teaches it at the whiteboard: a short lesson for that dev's background (Juno never coded; Mo comes from Python) plus a quiz.
- Click a dev's computer: the camera flies in and you write Rust on its screen. Compile → WebAssembly → your function runs in the build.
- Fly back: the dev celebrates, and the studio TV shows Crab Pong changing live. Click the TV to play it.
- When every bug is fixed: survive the release crunch (playtesters' bug tickets on the morale budget), then ship. Critics review it on the TV, money and fans go up, and Crab Pong joins the shelf next to the locked next games.

## Player goal & fail state — what "working" looks like
- Goal: ship Crab Pong with all six features working, scoring as well as you can with the critics.
- Fail state: running out of morale in the crunch restarts the crunch. Nothing else can fail: fixes retry for free.
- The chapter is complete when the review shows four critic scores, money and fans go up, and Crab Pong sits on the shelf.

## MVP — what must exist to be the game
- 3D studio scene: room, three desks with computers, devs with speech bubbles, the TV, the whiteboard and the shelf. Camera fly-in and fly-out. Fixed-timestep game logic.
- WASM pipeline: player function → Playground `/compile` (wasm) → wabt → running module → checks (`src/rust/`, built).
- Crab Pong rendered on the TV: per-bug fallbacks that show their cause, an attract mode, and playable against an AI paddle.
- Computer screen editor: CodeMirror on the monitor, compile, checks, hint and console. Six bugs across the desks (rustlings variables1–6).
- Training: Ferris's lesson per dev background, a quiz, and topic gating (a dev fixes only topics they've been trained in).
- Release crunch: 4 bug tickets on the reused rolling fight, with morale as the hearts.
- Ship and review: critics on the TV, sales, the save, the shelf, and a chapter 2 teaser.

## Out of scope — not building this
- Chapters 2+, spending money (hiring, salaries, upgrades), and the studio-automation layer (B was killed as a core loop; see `prototypes/GRAVEYARD.md`).
- Strings across the wasm boundary, a learner-mode picker, sound effects, accounts, multiplayer, custom 3D models (primitives only), and walking around (camera only).

## Build order
1. The 3D studio shell plus Crab Pong on the TV, wired to the existing wasm pipeline. This is the core fun: fixing the first bug makes the paddles move on the TV.
2. The computer screen editor and all six bugs, with `verify:rust` on wasm32.
3. Team, training at the whiteboard, and topic gating.
4. The crunch (reused fight) and ship/review with balance.
5. Polish, an end-to-end test on the real Playground, and the Pages deploy.

Production rules from the prototypes:
- Show each bug's cause in the game, not only its symptom.
- Celebrations play only after the camera is back in the room view.
- Game logic runs on a fixed 60 Hz step; animations use elapsed time.
- Keep the pixel ratio at 1.5 or below and the shadow maps at 1024.

---
**Who it's for / what they feel:** curious beginners and other-language devs who want Rust practice that feels like playing a cozy studio game, not doing homework.

**Art & audio direction:** a warm low-poly studio built from primitives (wood floor, cream walls, orange Ferris accents), a chunky retro Pong on the TV, readable in-world screens, and the reused calm synth music.

**Reference game:** Game Dev Tycoon (the studio, the project board and the review loop; no economy yet) crossed with The Farmer Was Replaced (your code really runs the world).
