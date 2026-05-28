### Autonomous run

1. State the exit condition as a checkable predicate before the first iteration.
2. Pick the continuation mechanism. Use Codex automations for later wakeups, monitors, recurring checks, or thread heartbeats. Use a local loop only when it is safer and observable.
3. Keep a decision trail with `show-me-your-work` when the user will review later.
4. Work in small iterations. Verify each iteration against the real artifact.
5. Stop only when the predicate is satisfied, an approval gate blocks progress, or the same blocker repeats enough times that the run is genuinely blocked.

Reply with the predicate, the final state, the evidence, and any remaining approval gates.
