#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$HOME/bin"

ln -sfn "$root/bin/glines" "$HOME/bin/glines"
ln -sfn "$root/bin/ggone" "$HOME/bin/ggone"

echo "linked:"
echo "  $HOME/bin/glines -> $root/bin/glines"
echo "  $HOME/bin/ggone  -> $root/bin/ggone"
echo
echo "ensure ~/bin is on PATH, then optionally:"
echo "  git config --global alias.lines '!\"$HOME/bin/glines\""
echo "  git config --global alias.gone  '!\"$HOME/bin/ggone\""
