# Spudex

Spudex is a Codex-native adaptation of pstack for rigorous engineering work.

It is not just one mode prompt. The repo carries the full pstack-style skill graph adapted for Codex:

- `spudex` as the main entrypoint.
- Workflow skills such as `how`, `why`, `architect`, `arena`, `interrogate`, `figure-it-out`, `reflect`, `show-me-your-work`, `tdd`, `typescript-best-practices`, and `unslop`.
- Nineteen principle skills, including `principle-build-the-lever`.
- The full Spudex playbook set, including refactoring, trace forensics, and session pickup.

## Install

Clone the repo, then install all bundled skills into your Codex skills directory:

```bash
git clone git@github.com:micic-mihajlo/spudex.git
cd spudex
./scripts/install.sh
```

Restart Codex or start a fresh thread so the skill list reloads.

Use `spudex` or `/spudex` as the default entrypoint for non-trivial work. The supporting skills can also be invoked directly when installed.

## Repository Layout

- `SKILL.md` keeps the repo installable as a single Spudex skill when cloned directly into `~/.codex/skills/spudex`.
- `playbooks/` and `references/` support that single-skill install path.
- `skills/` contains the full Codex skill pack. `scripts/install.sh` copies these folders into `~/.codex/skills`.
- `agents/openai.yaml` and `skills/spudex/agents/openai.yaml` provide Codex UI metadata for the main skill.
- `agents/spudex-agent.md` documents the optional delegate profile that corresponds to pstack's original agent wrapper.

## Codex Adaptation

The original pstack package targets Cursor. Spudex preserves the engineering discipline and rewrites the execution model for Codex:

- Cursor todo lists become Codex `update_plan`.
- Cursor `Task` calls become optional `multi_agent_v1.spawn_agent` usage when that tool is available and allowed.
- Cursor named subagent types become Codex agent roles such as `worker`, `reviewer`, `architect`, or `default`.
- Cursor `/loop` workflows become Codex automations, heartbeat follow-ups, or explicit local loops.
- Cursor-specific paths move from `.cursor` and `~/.cursor` to Codex workspace and `~/.codex` conventions.
- Cursor-only built-ins such as `create-skill`, `babysit`, `control-ui`, and `control-cli` are mapped to Codex skills, plugins, or direct tool usage when available.

## Attribution

Spudex is an independent Codex-native adaptation inspired by Lauren Tan's pstack and original Cursor-oriented Poteto mode.

Original pstack source:

https://github.com/cursor/plugins/tree/main/pstack

Original post:

https://x.com/poteto/status/2058975157503570132

This repo was adapted from pstack at upstream commit `710e829b555d21d90dd3ebeabdf7c868d00dd1f0`.

## License

MIT. See `LICENSE`.
