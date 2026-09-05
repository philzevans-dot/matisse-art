#!/usr/bin/env bash
# Push main to GitHub using saved gh credentials. No interactive login.
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"

if ! gh auth status -h github.com >/dev/null 2>&1; then
  echo "GitHub CLI is not logged in. Cannot auto-push." >&2
  exit 1
fi

gh auth setup-git >/dev/null
git push github main
echo "Pushed main to https://github.com/philzevans-dot/matisse-art"
