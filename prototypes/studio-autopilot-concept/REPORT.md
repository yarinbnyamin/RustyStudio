<!-- PROTOTYPE - NOT FOR PRODUCTION -->
<!-- Question: does writing the Rust that runs the studio every day feel like automating a company? -->
<!-- Date: 2026-11-01 -->
# Concept Prototype Report: Studio Autopilot (B)

> **Date**: 2026-11-01
> **Prototype Path**: HTML (served by `npm run dev`)
> **Concept File**: design/game-brief.md

---

## Hypothesis

If the player writes the Rust that the studio calls every in-game day and watches the month play
out, they will feel they are automating a company. Evidence: they re-run the month 3 or more times
to beat their best cash.

---

## Riskiest Assumption Tested

That chapter 1 code (variables only, with no `if` or loops) can express a strategy interesting
enough to replay. It was never tested on its own merits: the playtester chose A instead.

---

## Approach

The build is one page:
- `autopilot.rs` with 3 bugs: `let`, `mut`, `const`;
- an animated 30-day sim of hours vs morale, marketing vs cash, and price vs buyers;
- a best-result tracker.

The balance was simulated in Node before building. The default code ends at about $8.2k. Crunching
(10 h or more) causes burnout bugs and ends at about $3k. Overspending on marketing goes bankrupt.
A sweet spot sits at about $9k.

**Path chosen:** HTML.
**Reason for path:** turn-based logic, so feel is not the question.

**Shortcuts taken (intentional):** hardcoded balance, emoji desks, no save, and a textarea editor.

---

## Result

- The playtester played both prototypes and picked **A (Crab Pong)**.
- B was not debriefed separately.

---

## Metrics

| Metric | Value |
|--------|-------|
| Path used | HTML |
| Iterations to playable | N/A |
| Prototype duration | about 1 hour |
| Playtesters | 1 internal |
| Feel assessment | Not assessed separately; it lost the A/B pick |
| Hypothesis verdict | Not tested on its own; A was preferred |

---

## Recommendation: KILL

In a direct A/B comparison, the playtester preferred coding the game (A) over coding the studio (B).
The automation idea isn't dead for later chapters: once `if`, loops and collections are taught, an
autopilot could return as a side system inside A's studio. It is not the core loop.

---

## If Killing

The core loop goes to A. B's balance model (hours/morale, marketing/fans, price/buyers) can inform
a future studio-management layer.

**Next step:** continue with A's pivot (`prototypes/crab-pong-concept/PIVOT-NOTE.md`).

---

## Lessons Learned

- **What assumptions were broken by actually building this?** It was hard to make variables-only
  code feel like a strategy. Tuning numbers works, but you write no decisions.
- **What surprised us that didn't show up in the brainstorm?** The first balance pass bankrupted
  every strategy, because salaries were larger than the starting cash. Simulating before building
  caught it.
- **What would we test differently next time?** Prototype automation at a later chapter, once `if`
  and loops exist.

---

> *Prototype code location: `prototypes/studio-autopilot-concept/`*
> *This code is throwaway. Never refactor into production.*
