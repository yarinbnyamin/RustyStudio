<!-- PROTOTYPE - NOT FOR PRODUCTION -->
<!-- Question: does fixing Rust lines that visibly change a live Crab Pong feel like building a game? -->
<!-- Date: 2026-11-01 -->
# Prototype A: Crab Pong

**Hypothesis:** if the player fixes a broken Rust line and watches Crab Pong change live, they will
feel that their code built the game. We will know it is true if, after card 1, they start card 2
without prompting and play the Pong preview between fixes.

**Riskiest assumption:** variables-level fixes (`let`, `mut`, `const`) feel too trivial to count as
"building a game", and a compile of about 2 s breaks the live feel.

**How to run:** `npm run dev`, then open http://localhost:5173/RustyStudio/prototypes/ and pick A.
It needs an internet connection, because code compiles on the Rust Playground.

**Status:** concluded on 2026-11-01. Verdict PIVOT: keep the loop, move it into a 3D studio.

**Findings:** the hypothesis was CONFIRMED (every fix was a best moment). The presentation read as a web tutorial. See REPORT.md and PIVOT-NOTE.md.
