#!/usr/bin/env bash
# Wrapper around the research-eval engine CLI (repo-root cli.py).
# Resolves the repo root regardless of invocation cwd, then delegates all args.
#
# Example:
#   bash tools/research-eval/run.sh review \
#       --paper paper.pdf --workspace ./code \
#       --config api-key.md --output review.md
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$REPO_ROOT"

exec python cli.py "$@"
