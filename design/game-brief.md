# Game Brief: Rusty Studio

**One-sentence pitch:** Run a tiny garage game studio whose team is learning Rust, and ship real games by writing real Rust that the real compiler turns into the game you play.

Full design: `design/rusty-studio-design.md`. This brief covers the chapter 1 demo only: Variables → Crab Pong.

## Core loop
- Train a dev (Juno, who has never coded, or Mo, who comes from Python) in a Rust topic with Ferris's lesson and a quiz.
- Assign a trained dev to a feature card. Write the Rust function, compile it to WebAssembly and watch the bug vanish from the live Crab Pong preview.
- When every card is done, survive the release crunch: fix playtesters' bug tickets with the morale budget.
- Ship it! Get reviews, fans and money, and see the teaser for the next game.

## Player goal & fail state — what "working" looks like
- Goal: ship Crab Pong with all six features working, scoring as well as you can with the critics.
- Fail state: running out of morale in the crunch restarts the crunch. Nothing else can fail: cards retry for free.
- The chapter is complete when the review screen shows four critic scores and money and fans go up.

## MVP — what must exist to be the game
- WASM pipeline: player function → Playground `/compile` (wasm) → wabt → running module → checks.
- Crab Pong on Canvas 2D: per-feature fallbacks, live preview, playable vs an AI paddle.
- Studio screen: HUD, team, project board and **Play Crab Pong**.
- Training: the lesson per dev background, a quiz, and topic gating.
- Feature card screen: editor, compile, checks, hint and preview, for 6 cards (rustlings variables1–6).
- Release crunch: 4 bug tickets on the reused rolling fight.
- Ship screen: reviews, sales, the save, and a chapter 2 teaser.

## Out of scope — not building this
- Chapters 2+, spending money (hiring, salaries, upgrades), and the studio-automation layer.
- Strings across the wasm boundary, a learner-mode picker, sound effects, accounts and multiplayer.

## Build order
1. The WASM pipeline plus Crab Pong with fallbacks. This is the risky, core-fun part: compiling card 1 makes the paddles move.
2. The feature card screen and the six cards, with `verify:rust` on wasm32.
3. Studio screen, team, training and gating.
4. The crunch (reused fight) and the ship/review screen with balance.
5. Polish, an end-to-end test on the real Playground, and the Pages deploy.

---
**Who it's for / what they feel:** curious beginners and other-language devs who want Rust practice that feels like playing a cozy tycoon, not doing homework.

**Art & audio direction:** warm flat vector garage-studio art with an orange Ferris palette, a chunky retro Pong court, and the reused calm synth music.

**Reference game:** Game Dev Tycoon (the studio, the project board and the review loop; no economy yet) crossed with The Farmer Was Replaced (your code really runs the world).
