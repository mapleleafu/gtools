# gtools

Personal git CLI helpers — short colored shortcuts for everyday git cleanup and diff stats.

## Tools

| Command | Git alias | What it does |
|---|---|---|
| `glines` | `git lines` | Line change stats (staged / unstaged / untracked) |
| `ggone` | `git gone` | Prune gone remotes, remove their worktrees, delete matching local branches |

## Install

```bash
git clone https://github.com/mapleleafu/gtools.git ~/dev/personal/gtools
~/dev/personal/gtools/install.sh
```

This symlinks the scripts into `~/bin` (make sure that is on your `PATH`).

Optional shell wrappers / aliases:

```bash
# ~/.zshrc
glines() { command "$HOME/bin/glines" "$@"; }
ggone()  { command "$HOME/bin/ggone"  "$@"; }
```

```bash
git config --global alias.lines '!'"$HOME/bin/glines"
git config --global alias.gone  '!'"$HOME/bin/ggone"
```

## Usage

```bash
glines              # vs HEAD
glines -d           # per-file breakdown
glines main

ggone               # delete gone locals and their worktrees
ggone -n            # dry-run
```
