<!-- PROTOTYPE - NOT FOR PRODUCTION -->
<!-- Question: does Crab Pong's coding loop feel like a game (not a tutorial) inside a 3D studio? -->
<!-- Date: 2026-11-01 -->
# Prototype A2: Crab Studio 3D

The pivot from `../crab-pong-concept/PIVOT-NOTE.md`.

**Hypothesis:** if the coding happens inside a 3D game studio (click a dev's computer, write Rust on
its screen, watch Crab Pong run on the studio's TV), the player feels they're playing a game rather
than doing a tutorial. Signal: the player calls it "a game" and wants to see the next game on the
shelf.

**Riskiest assumption:** code stays readable and comfortable to type inside a 3D scene with no art
assets. The editor is real HTML laid exactly over the 3D monitor's projected screen once the camera
has flown in.

**What's in it:**
- A low-poly studio built from primitives.
- Juno and Mo at their desks, plus your desk. Each desk owns one bug and has a speech bubble.
- The TV plays the live Crab Pong build. Its paddle shows `speed = 0`, so the cause is visible.
- A whiteboard project board, and a shelf with the next games (Snake and Breakout, locked).
- A Ship button once all three bugs are fixed.

**How to run:**
1. `npm install` once in this folder, for three.js.
2. `npm run dev` at the repo root.
3. Open http://localhost:5174/RustyStudio/prototypes/ (or whichever port Vite prints) and pick A2.

It needs an internet connection, because code compiles on the Rust Playground.

**Status:** concluded on 2026-11-11. Verdict PROCEED.

**Findings:** CONFIRMED: it feels like a game, and Pong on the TV was the best moment. Celebrate only after the camera returns; use a fixed timestep. See REPORT.md.
