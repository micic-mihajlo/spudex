### Authoring or modifying a skill

You own the skill's voice. Agent-facing prose has a higher bar than human prose.

1. Use the `skill-creator` skill.
2. Validate the skill: frontmatter has `name` and `description`, referenced files exist, and cross-skill links resolve when they are local.
3. Test cases if structural. Skip if subjective.
4. Run **Opening a PR** if publishing through git is part of the task.

When in doubt, delete. Prose earns its keep by changing a decision. Match tone to scope. Point at structural sources such as types, READMEs, config, scripts, and tests. Hardcoded details go stale.

Reply with the skill summary, key design decisions, and validation notes.
