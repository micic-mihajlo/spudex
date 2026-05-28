### Feature

1. Name the data shape first. Include external inputs, internal representation, and output.
2. Read the relevant source and the closest existing pattern.
3. Write the throughput checkpoint: current step, next proof, expected artifact, and stop condition.
4. If the change crosses a function boundary, use `architect` before implementing.
5. Implement surgically. Prefer existing helpers and local patterns.
6. Verify the actual feature path.
7. Review the exact diff for unnecessary complexity and prose slop.
8. Run **Opening a PR** if publishing through git is part of the task.

Reply with the data shape, behavior change, choices, verification, and residual risk.
