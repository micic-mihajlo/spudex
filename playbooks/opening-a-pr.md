### Opening a PR

Use this only when publishing through git is part of the task.

1. Inspect git state before staging. Preserve unrelated user work.
2. Review the exact outgoing diff. Remove accidental files, debug output, and needless churn.
3. Run the narrowest meaningful verification before commit.
4. Use `deslop` when available. Apply `unslop` to commit bodies and PR text.
5. Commit in small ordered slices when the work naturally splits.
6. Push only after the branch is clean and the user has not prohibited it.
7. Open the PR with a direct description of behavior and verification.
8. After opening, use `babysit` when available. Otherwise inspect checks and comments directly.

In Codex desktop, emit git directives in the final reply only after each matching git action succeeds.
