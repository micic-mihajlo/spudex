#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
target_dir="${CODEX_HOME:-"$HOME/.codex"}/skills"
force=false

if [ "${1:-}" = "--force" ]; then
  force=true
fi

mkdir -p "$target_dir"

for skill_dir in "$repo_root"/skills/*; do
  [ -d "$skill_dir" ] || continue
  name="$(basename "$skill_dir")"
  if [ -e "$target_dir/$name" ]; then
    if [ "$force" != true ]; then
      printf 'Skipped %s because %s already exists. Re-run with --force to replace it.\n' "$name" "$target_dir/$name"
      continue
    fi
    rm -rf "$target_dir/$name"
  fi
  cp -R "$skill_dir" "$target_dir/$name"
done

printf 'Installed Spudex skills into %s\n' "$target_dir"
