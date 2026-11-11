<!-- PROTOTYPE - NOT FOR PRODUCTION -->
<!-- Question: does Crab Pong's coding loop feel like a game (not a tutorial) inside a 3D studio? -->
<!-- Date: 2026-11-11 -->
# Concept Prototype Report: Crab Studio 3D (A2)

> **Date**: 2026-11-11 (built 2026-11-01, played 2026-11-11)
> **Prototype Path**: HTML + three.js 0.186.1 (served by `npm run dev`)
> **Concept File**: design/game-brief.md

---

## Hypothesis

If the coding happens inside a 3D game studio (click a dev's computer, write Rust on its screen,
watch Crab Pong run on the studio's TV), the player feels they're playing a game rather than doing a
tutorial. Evidence: the player calls it a game and wants the next game on the shelf.

---

## Riskiest Assumption Tested

That code stays readable and comfortable to type inside a 3D scene with no art assets. **It held.**
The editor is real HTML laid exactly over the 3D monitor's projected screen once the camera has flown
in, so the text stays sharp and typing works normally. Nobody complained about the editor.

---

## Approach

The studio is a low-poly room built from three.js primitives:
- Juno's, Mo's and your desk, each with one bug and a speech bubble;
- the TV, showing the live Crab Pong build as a canvas texture;
- a whiteboard project board, drawn on a canvas;
- a shelf of game boxes: Crab Pong, then Snake and Breakout, locked.

Clicking a computer flies the camera in and opens the editor on its screen. Clicking the TV flies in
to play with W/S or ↑/↓. A Ship button appears once all bugs are fixed. The pivot note's bug framing
is in: the paddle shows `speed = 0`, and the TV prints each cause (`score += 1 ✖ (not mut)`,
`WIN_SCORE = ?`).

**Path chosen:** HTML + three.js, the same stack the game ships on.
**Shortcuts taken (intentional):** primitive art, a textarea editor, hardcoded content, no save.

**Iteration during the playtest:** the player first reported "cute but runs slow". Measurements:
- JavaScript took about 0.8 ms per frame on an RTX 3060 Ti, so the scene wasn't the cost.
- The real bug: game logic and the camera tween moved a fixed amount per frame, so any frame-rate dip
  turned into slow motion.

The fix runs game logic on a fixed 60 Hz step and makes the tween time-based. It also lowered the
pixel-ratio cap to 1.5, used 1024 PCF shadows, asked for the high-performance GPU, and added an
fps + GPU readout. Result: the player reports "about 60 fps, smooth".

---

## Result

- Hypothesis: **CONFIRMED.**
- Best moment: **Pong on the TV**, watching and playing the build inside the studio.
- Worst moment: when you finish one computer's code, the dev jumps to celebrate while the camera is
  still zoomed in on the monitor, so the jump looks weird up close.
- Before that, from the round-1 playtest: "Godot or web?" was answered by measurement. The web wasn't
  the bottleneck, and a Godot export would draw through the same browser WebGL and couldn't run
  player wasm natively.

---

## Metrics

| Metric | Value |
|--------|-------|
| Path used | HTML + three.js |
| Iterations to playable | 2 (the first build had frame-tied motion) |
| Prototype duration | about 2 hours, including the performance fix |
| Playtesters | 1 internal (the project owner) |
| Feel assessment | 60 fps and smooth after the fixed step. A compile takes about 2.2 s. The camera fly-in reads well. The celebration jump during the zoom looks wrong. |
| Hypothesis verdict | CONFIRMED |

---

## Recommendation: PROCEED

Both the loop (A) and the game-like shell (A2) are confirmed. Build the chapter 1 demo as a 3D studio
in three.js, written from scratch to production standards. This prototype's code is not migrated.

---

## If Proceeding

- **Core tuning values discovered:**
  - camera fly-in about 0.8 s, with ease-in-out;
  - the monitor editor fills about 82% of the view;
  - pixel ratio capped at 1.5, with 1024 PCF shadows;
  - compiles of about 2 s are acceptable.
- **Assumptions confirmed:**
  - the fix → compile → game changes loop carries a variables chapter;
  - an editor on an in-world screen stays readable;
  - the web stack performs fine.
- **Assumptions disproved:** that the web might be too slow. It was frame-tied game logic.
- **Emergent mechanics:**
  - The TV is the star: the build you're making, always visible in the room.
  - The shelf of locked next games works as the progression map.
- **Rules for production:**
  1. Show the cause of a bug in the game (`speed = 0`), not only its symptom.
  2. Celebrations (dev jump, cheer) play only after the camera is back in the room view.
  3. All game logic runs on a fixed timestep; animations use elapsed time.

**Next steps (rigor minimal):** update `design/game-brief.md`, then `/create-stories`, then
`/dev-story`.

---

## Lessons Learned

- **What assumptions were broken by actually building this?** "It runs slow, so maybe the web is the
  problem" was wrong. Measure before switching engines.
- **What surprised us that didn't show up in the brainstorm?** The TV showing the live build became
  the best moment, more than the coding screen itself.
- **What would we test differently next time?** Use a fixed timestep from day one, and play
  celebration and feedback animations only when the camera can frame them.

---

> *Prototype code location: `prototypes/crab-studio-3d-concept/`*
> *This code is throwaway. Never refactor into production.*
