### Perf issue

1. Capture a baseline measurement on the real path.
2. Identify the hot path from a trace, profile, or measurement.
3. Plan the fix from the trace. If it crosses a function boundary, use `architect` first.
4. Implement the smallest change that attacks the measured cause.
5. Capture the post-fix measurement with the same method.
6. Run **Opening a PR** if publishing through git is part of the task.

Reply with baseline, cause, change, post-fix measurement, and remaining bottlenecks.
