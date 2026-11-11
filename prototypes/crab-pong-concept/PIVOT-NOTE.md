<!-- PROTOTYPE - NOT FOR PRODUCTION -->
<!-- Question: carry-forward note from Crab Pong A (HTML) to A2 (3D studio) -->
<!-- Date: 2026-11-01 -->
# Pivot note: Crab Pong → Crab Pong in a 3D studio

## Original hypothesis
If the player fixes a broken Rust line and watches Crab Pong change live, they will feel that their
code built the game. Signal: after card 1 they start card 2 unprompted and play Pong between fixes.
Verdict: **CONFIRMED.** "Every one" of the fixes was a best moment, and nothing was frustrating.

## Keep
- The loop: fix one Rust function, and it compiles to wasm and visibly changes the running game.
- The real compiler. The 1.5–2 s compile drew no complaints.
- One bug per card, mapped to something you can see in the game; free tuning after the fix
  (speed, win score).
- The three variables cards: `let`, `mut`, `const`.

## Change
1. **Presentation (the pivot).** The HTML page feels like a generic W3Schools-style tutorial, not a
   mini video game. Make it a **3D mini studio in three.js**:
   - a room with Juno and Mo at desks with computers;
   - the game being built (Crab Pong, and later the next games on the list) running on a screen in
     the studio;
   - the project list as an object in the room, such as a whiteboard or shelf of game boxes;
   - clicking a dev's computer opens the code on that computer's screen.
2. **Bug framing.** Make the cause visible, not just the symptom. For example, the paddle card shows
   the paddle has `speed = 0`, and the player creates the variable and sets the speed. "The buttons
   don't work" confused the player.

## Revised hypothesis
If the coding happens inside a 3D game studio (click a dev's computer, write Rust on its screen,
watch Crab Pong run on the studio's monitor), the player feels they're playing a game rather than
doing a tutorial. Signal: the player calls it "a game" and wants to see the next game on the list.

## Riskiest assumption
Code stays readable and comfortable to type inside a 3D scene, without art assets: the low-poly
studio is built from primitives, and the editor needs focus and keyboard handling.
