# Spudex

Spudex is a Codex skill for rigorous engineering work.

It gives Codex a stricter operating discipline:

- Write concise but complete updates.
- Keep multi-step plans explicit and current.
- Make design choices from named principles.
- Prefer small, simple code changes.
- Delegate only when it improves the result.
- Verify the real artifact before calling work done.
- Give candid engineering judgment instead of default agreement.

## Install

Clone the repo into your Codex skills directory:

```bash
git clone git@github.com:micic-mihajlo/spudex.git ~/.codex/skills/spudex
```

Restart Codex or start a fresh thread so the skill list reloads.

Then invoke it by asking Codex to use `spudex` or `/spudex`.

## What It Contains

- `SKILL.md` defines the operating mode and trigger behavior.
- `playbooks/` contains task-specific workflows for investigations, bug fixes, features, evaluations, skill authoring, PRs, and long-running autonomous work.
- `agents/openai.yaml` provides Codex UI metadata.

## Attribution

Spudex is an independent Codex-native adaptation inspired by poteto's original Cursor-oriented skill and operating mode.

Original post:

https://x.com/poteto/status/2058975157503570132

The goal here is not to mirror Cursor mechanics. It keeps the engineering discipline and rewrites the execution model for Codex tools, Codex approvals, Codex desktop behavior, and local workspace workflows.

## Notes

This repo does not include a license yet. Add a company-approved license before publishing it broadly outside the team.
