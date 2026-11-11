<!-- PROTOTYPE - NOT FOR PRODUCTION -->
<!-- Question: does fixing Rust lines that visibly change a live Crab Pong feel like building a game? -->
<!-- Date: 2026-11-01 -->
# Concept Prototype Report: Crab Pong (A)

> **Date**: 2026-11-01
> **Prototype Path**: HTML (served by `npm run dev`, because the wasm converter is an npm import)
> **Concept File**: design/game-brief.md

---

## Hypothesis

If the player fixes a broken Rust line and watches Crab Pong change live, they will feel that their
code built the game. Evidence: after card 1 they start card 2 unprompted and play Pong between fixes.

---

## Riskiest Assumption Tested

That variables-level fixes (`let`, `mut`, `const`) feel too trivial to count as building a game,
and that a compile of about 2 s breaks the live feel. **Neither held:** every fix felt like a best
moment, and the compile wait drew no complaints.

---

## Approach

The build is one page:
- three bug cards: paddles don't move (`let`), score never changes (`mut`), nobody ever wins
  (`const`);
- a textarea editor, Compile, and a console showing real rustc errors;
- live Canvas Pong against an AI paddle.

Each compiled function is plugged straight into the running game. A shared helper compiles on the
Rust Playground (target wasm) and converts the WAT with wabt. It took about one hour, including
one bug: `WebAssembly.instantiate(module)` returns the instance itself. That bug was found in the
browser test and fixed before the playtest.

**Path chosen:** HTML.
**Reason for path:** the question is about the code → game loop, not about timing-precise feel.

**Shortcuts taken (intentional):**
- a textarea instead of CodeMirror, and hardcoded checks;
- no team, training, crunch, review, money or save;
- placeholder visuals: rectangles, with a 🦀 emoji as the ball.

---

## Result

- Hypothesis: **CONFIRMED** (playtester's verdict).
- Best moment: "Every one of them": each fix that changed the game felt good.
- Worst moment: "Nothing bad."
- Surprise: the paddle card was confusing. The symptom read as "the buttons don't work" rather than
  "the speed is 0". The playtester suggested that the paddle visibly has `speed = 0`, and the player
  creates the variable and sets the speed.
- Overall: the loop works, but the presentation is "too generic HTML interface and classical
  w3school tutorial and not like a mini video game". The playtester asked for a three.js mini studio
  with devs at computers and the game (Pong, then the next games on the list) visible in the studio.

---

## Metrics

| Metric | Value |
|--------|-------|
| Path used | HTML |
| Iterations to playable | N/A |
| Prototype duration | about 1 hour |
| Playtesters | 1 internal (the project owner) |
| Feel assessment | Compiles took 1.5–1.9 s, which was acceptable. Every fix produced a visible change. The page felt like a tutorial, not a game. |
| Hypothesis verdict | CONFIRMED |

---

## Recommendation: PIVOT

The core loop is confirmed and should be kept exactly. The playtester rejected the presentation:
it reads as a web tutorial, not a game. The next prototype keeps the loop and tests a game-like
shell, a 3D studio in three.js, and fixes the paddle card's framing. See `PIVOT-NOTE.md`.

---

## If Pivoting

**Pivot direction:** the same cards and compile loop, inside a 3D mini studio. Devs sit at
computers. You click a computer to code on its screen. Crab Pong runs on a screen in the room, and
the next games sit on a visible project list.
**What to keep:** the fix → compile → game changes loop, the real compiler, one visible bug per
card, and free tuning after a fix.
**Next step:** `/prototype` for the 3D studio, which picks up `PIVOT-NOTE.md`.

---

## Lessons Learned

- **What assumptions were broken by actually building this?** "Variables are too trivial to feel
  like building a game" was wrong: seeing your line change the game carries it.
- **What surprised us that didn't show up in the brainstorm?** Presentation matters as much as the
  loop. A correct loop in a web-form shell still reads as homework.
- **What would we test differently next time?** Show a bug's cause (`speed = 0`), not only its
  symptom.

---

> *Prototype code location: `prototypes/crab-pong-concept/`*
> *This code is throwaway. Never refactor into production.*
