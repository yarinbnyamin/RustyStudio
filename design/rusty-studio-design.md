# Rusty Studio: chapter 1 demo design

Status: approved in brainstorming on 2026-11-01. Updated on 2026-11-11 after the concept prototypes:
the game lives in a 3D studio (see "Prototype outcome" below). The one-page summary is
`design/game-brief.md`.

Rusty Studio is the "game" fork of [PlayRusty](https://github.com/yarinbnyamin/PlayRusty). The classical
PlayRusty is kept as is, on the `classical` branch and `classical-v1` tag of that repo. Rusty Studio
teaches the same rustlings path as a game-dev tycoon: you run a tiny studio whose team is learning Rust,
and every exercise is a feature of a real game that your studio ships. The player's Rust is compiled
by the real compiler and runs the in-game game live.

This document covers the **chapter 1 demo only**: Variables → Crab Pong.

### Prototype outcome (2026-11-11)

Three throwaway prototypes are recorded in `prototypes/index.md`:
- **A, code the game:** loop CONFIRMED, but it read as a web tutorial, so it pivoted.
- **B, automate the studio:** killed after losing the A/B pick.
- **A2, the same loop inside a 3D studio in three.js:** CONFIRMED, PROCEED.

What changes in this document:
- **"Screens" become places in the studio.** The studio screen is the 3D room. A feature card is a
  dev's computer, where the camera flies in and the editor sits on its screen. The Crab Pong preview
  is the studio TV. The project board is the whiteboard. The next games are boxes on the shelf.
- **Rules for production:**
  - Show each bug's cause in the game (`speed = 0`), not only its symptom.
  - Celebrations play only after the camera is back in the room view.
  - Game logic runs on a fixed 60 Hz step; animations use elapsed time.
  - Pixel ratio 1.5 or below, with 1024 shadow maps.

## 1. Concept

You've just founded a garage game studio. Nobody on the team knows Rust yet. Each chapter is one game
the studio builds, in rustlings order (chapter 1 Variables → Crab Pong; later ones such as Functions →
Snake are out of scope here).

### Core loop of a chapter

1. **The 3D studio.** The room with the team at their desks, each with a speech bubble naming the
   bug they're stuck on. It also has a HUD with money and fans, the whiteboard project board (one
   card per feature), the TV playing the current build, and the shelf of games.
2. **Training.** Ferris, the studio's Rust mentor, teaches a topic to one dev. The lesson pages are
   written for that dev's background.
3. **Feature card.** Assign a trained dev and write the Rust: the card text, a CodeMirror editor,
   **▶ Compile**, and a live Crab Pong preview. Your function compiles to WebAssembly and is plugged into
   the running game. Before the fix the bug is visible (paddles frozen, ball stuck…); after it, the
   feature works. The game grows as cards get done.
4. **Release crunch.** Playtesters file bug tickets. This is classical PlayRusty's rolling boss fight,
   re-themed: each fixed ticket is a hit, failed attempts cost studio morale (the hearts), and hints come
   from Ferris.
5. **Ship it!** Critics review the game based on features, crunch stars and team bonuses. Sales bring
   money and fans. A teaser for the next project ends the chapter.

### Team

| Member | Background | Learns from | Bonus on cards they build |
|---|---|---|---|
| Ferris | Senior Rustacean, the mentor | n/a | Runs training; gives hints |
| Juno | Has never coded | classical's `beginner` pages | +Polish |
| Mo | Comes from Python | classical's `experienced` pages, with "Coming from Python" notes | +Tech |

- Every card has one topic. A card can be assigned only to a dev trained in that topic.
- Every topic must be trained into at least one dev. The first training in a topic is the full lesson
  plus one quiz puzzle.
- Training the second dev in a topic they don't know yet is optional. It's the quiz only, and it gives a
  small bonus (see Balance).
- You, the player, write all the code. The assigned dev only decides the bonus.

### Crab Pong cards (rustlings variables1–6)

Each card is one Rust function the game calls. Arguments and returns are numbers or `bool` only.

| # | Card | Topic | Function | Bug before the fix (fallback) | Starter's mistake | Checks |
|---|---|---|---|---|---|---|
| 1 | Paddles don't move | `let` | `paddle_speed() -> f32` | paddles frozen (0) | `speed = 6.0;` with no `let` | returns 6.0 |
| 2 | Ball is stuck | initialization | `ball_speed() -> f32` | ball doesn't move (0) | `let speed: f32;` with no value | returns 5.0 |
| 3 | Boring serve | initialization | `serve_angle() -> f32` | serves dead straight (0) | value used before it's set | returns 0.5 |
| 4 | Score never changes | `mut` | `score_after_goal(score: i32) -> i32` | scoreboard stuck (returns `score`) | `total += 1` on a non-`mut` binding | 0→1, 4→5 |
| 5 | Grey ball | shadowing | `ball_color() -> u32` | grey ball (0x888888) | `color = 0xFF8800` assigned to a `&str` variable | returns 0xFF8800 |
| 6 | Nobody ever wins | `const` | `win_score() -> i32` | the match never ends | `const WIN_SCORE = 5;` with no type | returns 5 |

Five topics and six cards: cards 2 and 3 share "initialization". The exact starter and solution code is
content work; every starter must fail (compile error or failed check) and every solution must pass.

### Release crunch

There are 4 bug tickets, each a self-contained Rust program with hidden `#[test]`s and a `fn main`. This
is the same `BossRound` shape and the same `fight.ts` rules as classical PlayRusty:
- the "boss" HP is the number of open bugs;
- lives become morale: n−1, counted in halves;
- hints: n−2, at most one per ticket;
- a failed test costs 1 heart, a compile error costs half, and an unreachable Playground costs nothing;
- stars = 3 − floor(halves lost ÷ 2) − hints used, minimum 1.

Tickets are Pong-themed variables bugs, for example "the score resets every frame".

### Economy (demo)

- Money and fans start at $0 and 0, and only go up.
- Spending, hiring, salaries and rent are chapter 2+.
- The "automate the studio" layer (writing Rust that runs the business) is decided later.

### Balance (data-driven, in one content file)

The numbers below are starting values. They all live in one balance table, not in code.
- **Card done:** +10 Gameplay (cards 1–3 and 6) or +10 Tech (cards 4–5).
- **Assigned dev:** Juno adds +5 Polish, Mo adds +5 Tech.
- **Second dev trained in a topic:** +3 Polish per topic.
- **Crunch:** +10 Polish per star.
- **Review:** four critics, each scoring 1–10 from the share of the maximum possible total, with a small
  fixed bias per critic (one loves Polish, one loves Tech…). A perfect run gets about 9–10 average; a
  run with every card done, Mo on every card, no second training and 1 crunch star gets about 6.
- **Sales:** fans = avg² × 10, money = fans × $5.

## 2. Architecture

The stack is Vite 8, TypeScript 7 (strict), Vitest 4 + jsdom, CodeMirror 6 and plain DOM, the same as
PlayRusty, plus **three.js** for the 3D studio. Crab Pong, the whiteboard and the idle monitor
screens are drawn with Canvas 2D into textures shown in the scene. The site is deployed to GitHub
Pages with Vite `base: "/RustyStudio/"`.

The Claude Code Game Studios template (MIT, by Donchitos) supplies the process: its `/start`, brief,
stories and `/dev-story` flow, the agents and the hooks. It ships Godot, Unity and Unreal specialists
only. This is a web/TypeScript project, so the generic programmer agents are used and the
engine-specific ones are skipped.

### Reused from PlayRusty (copied, not linked)

- Playground client, console and test-output parsing
- CodeMirror Rust editor
- `dom`, `markdown`, `tutorialPage`
- The four puzzle types, used for the training quizzes
- `save` (new key `rustystudio.save`)
- `fight.ts`, which becomes the crunch
- `hearts`, which becomes morale
- `hpBar`, which becomes the open-bugs bar
- Ferris art, Web Audio music, content validation and the `verify:rust` pattern
- The variables lesson pages, split into Juno's (beginner) and Mo's (experienced) versions

### New modules

| Module | Job |
|---|---|
| `src/rust/wasm.ts` | Wraps player code in export shims, compiles it via the Playground `/compile` endpoint (target `wasm`, channel `stable`, crate type `cdylib`), strips the WAT `@producers`/`@custom` annotations, converts WAT to wasm with `wabt` (lazy-loaded on the first compile), and instantiates the module with no imports. |
| `src/rust/checks.ts` | Calls the exported functions with each check's inputs and compares them to the expected values. The same code runs in the browser and in CI. |
| `src/pong/` | Crab Pong: a pure fixed-step `update(state, input, features)` plus `render(ctx, state)` into the TV's canvas texture. `features` holds an optional wasm function per card. While a card's function is missing, the game uses the card's fallback and draws that bug's cause (for example `speed = 0.0`). In the room the game runs in attract mode; at the TV, W/S or the arrow keys move your paddle. |
| `src/studio/` | Pure tycoon logic: team, training, card assignment, review scores, sales → money and fans. |
| `src/scene/` | The three.js studio: room, desks, devs and speech bubbles, the TV, whiteboard and shelf, the camera rig (orbit, plus fly-in to a computer or the TV), picking, and laying a DOM panel over a monitor's projected screen. |
| `src/content/chapters/01-crab-pong.ts` | Lessons per dev, quizzes, cards (topic, function, starter, solution, checks, hint, fallback), crunch tickets and the balance table. |
| `src/ui/panels/` | DOM panels shown in the studio: the computer editor (on the monitor), training at the whiteboard, the crunch, and ship/review on the TV. |

### Player code to running game

1. The player edits only the card's function. The wrapper adds `#[no_mangle] pub extern "C"` shims that
   call it, so the player never sees `unsafe` or FFI.
2. A compile error shows the compiler's stderr in the console, as in classical PlayRusty.
3. A successful compile gives a module of about 200 bytes. If its exports pass the card's checks, the
   card is done. Either way the preview uses the freshly compiled function, so a wrong-but-compiling
   answer is visible in the game. For example, paddles that are too fast.
4. A Rust panic becomes a wasm trap. It is caught and shown as "💥 Your game crashed" in the console, and
   the preview falls back for that feature.
5. A passing card's wasm is stored in the save as base64. After a reload the game rebuilds with no
   recompiling.
6. If the Playground can't be reached, the card shows the same "compiler bridge is down" message as
   classical PlayRusty, at no cost.

Proven in a spike on 2026-11-01: a stable-channel `/compile` with target `wasm` returned WAT. `wabt`
`parseWat` → `toBinary` gave a 138-byte module, and a stateful bouncing-ball `update()` produced correct
frames in Node.

### Save data (version 1)

- money and fans;
- for each dev, the set of topics they're trained in;
- for each card: assignee, done, last code, and passing wasm (base64);
- crunch stars;
- shipped flag and review scores;
- audio preferences.

There is no saving in the middle of the crunch, the same as classical PlayRusty.

### Gating

- A card needs a dev trained in its topic.
- The crunch unlocks when all six cards are done.
- **Ship it!** unlocks after the crunch is won.
- Clicking the studio TV always plays the current build.

## 3. Testing

- Vitest:
  - `studio` formulas;
  - `pong.update`, including each fallback;
  - wrapper generation;
  - WAT annotation stripping;
  - wasm instantiate and checks, using a WAT fixture with no network;
  - content validation;
  - screens, with the compiler mocked as in classical's `bossFight.test.ts`.
- `npm run verify:rust`:
  - **Cards:** cargo builds each card's starter and solution for `wasm32-unknown-unknown`. A starter
    must fail to compile or fail its checks; a solution must pass the same JS checks, run in Node.
  - **Crunch tickets:** the starter must fail and the solution pass under `cargo test`, as in classical
    PlayRusty.
- CI runs `npm ci`, `npm test`, `verify:rust` (after
  `rustup target add wasm32-unknown-unknown`) and `npm run build`, then deploys to Pages.
- Before the demo counts as done, one real Playground end-to-end run in a browser: compile card 1 and see
  the paddles move.

## 4. Out of scope for the demo

- Chapters 2+
- Spending money: hiring, salaries, rent, upgrades
- The studio-automation layer
- Strings across the wasm boundary
- A learner-mode picker (Juno and Mo replace it)
- Sound effects beyond the reused music
- Multiplayer and accounts

## 5. Credits to carry

- [rustlings](https://github.com/rust-lang/rustlings): the curriculum (MIT).
- [Claude Code Game Studios](https://github.com/Donchitos/Claude-Code-Game-Studios): the dev-process
  template (MIT, © Donchitos).
- [PlayRusty](https://github.com/yarinbnyamin/PlayRusty): the code reused here.
- The Rust Playground compiles player code.
- Ferris is public domain (Karen Rustad Tölva).
