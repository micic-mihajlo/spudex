### Bug fix

You own the task. Plan, review, verify.

1. Reproduce the bug on the relevant surface. If reproduction is impossible, prove the closest failing path and say what blocked full reproduction.
2. Trace the root cause. Use `how` and `why` when the cause is not obvious.
3. Plan the fix. If it crosses a function boundary, use `architect` first.
4. Implement the smallest root-cause fix. Name the data shape before code.
5. Add or update the focused test that would have caught the defect.
6. Verify the original repro now passes.
7. Run **Opening a PR** if publishing through git is part of the task.

Reply with repro, root cause, fix, tests, and verification.
