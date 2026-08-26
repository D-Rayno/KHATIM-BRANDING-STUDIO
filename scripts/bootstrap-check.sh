#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"
echo "KHATIM Brand Studio structure check"
for p in ".agents/agents/creative-director/agent.md" ".agents/skills/brand-qa/SKILL.md" ".agents/rules/00-khatim-always-on.md" "strategy/MASTER-PROMPT.md"; do
  test -f "$p" || { echo "MISSING: $p"; exit 1; }
done
echo "Core files present."
