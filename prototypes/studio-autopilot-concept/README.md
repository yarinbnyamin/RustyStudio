<!-- PROTOTYPE - NOT FOR PRODUCTION -->
<!-- Question: does writing the Rust that runs the studio every day, then re-running to beat your best, feel like automating a company? -->
<!-- Date: 2026-11-01 -->
# Prototype B: Studio Autopilot

**Hypothesis:** if the player writes the Rust the studio calls every in-game day and watches the
month play out, they will feel they are automating a company. We will know it is true if they re-run
the month 3 or more times trying to beat their best cash.

**Riskiest assumption:** chapter 1 code (variables only, with no `if` or loops) can't express real
strategy. This prototype tests whether tuning values through code is already a loop worth replaying.
Later chapters would add `if`, loops and collections, so the autopilot could make real decisions.

**Balance** (simulated in Node before building, all with price $20 except the default):
- Default code (8 h, cash/20 + 10, $15): about $8.2k at month end.
- 8 h with a flat $100 marketing budget: about $9.0k.
- Crunch at 10 h or more: burnout bugs, about $3k.
- Marketing at cash/5: bankrupt by day 11.

**How to run:** `npm run dev`, then open http://localhost:5173/RustyStudio/prototypes/ and pick B.
It needs an internet connection, because code compiles on the Rust Playground.

**Status:** concluded on 2026-11-01. Verdict KILL: lost the A/B pick to Crab Pong.

**Findings:** see REPORT.md and ../GRAVEYARD.md.
