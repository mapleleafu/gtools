#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$HOME/bin"

ln -sfn "$root/bin/glines" "$HOME/bin/glines"
ln -sfn "$root/bin/ggone" "$HOME/bin/ggone"
ln -sfn "$root/bin/gco" "$HOME/bin/gco"

echo "linked:"
echo "  $HOME/bin/glines -> $root/bin/glines"
echo "  $HOME/bin/ggone  -> $root/bin/ggone"
echo "  $HOME/bin/gco    -> $root/bin/gco"
echo
echo "ensure ~/bin is on PATH, then optionally:"
echo "  git config --global alias.lines '!\"$HOME/bin/glines\""
echo "  git config --global alias.gone  '!\"$HOME/bin/ggone\""
echo "  unalias gco 2>/dev/null; alias gco=\"\$HOME/bin/gco\""
