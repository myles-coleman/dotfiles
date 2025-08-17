# dotfiles

This is my dotfiles repository. It contains all my configuration files for my system.

## Installation

For a single package (e.g., just for hypr):
```bash
stown --force $HOME /home/bee/dotfiles/hypr
```

For all packages:
```bash
stown --force $HOME /home/bee/dotfiles/*
```

Use the `--dry-run` flag to see what would be installed without actually installing it.
```bash
stown --dry-run --force $HOME /home/bee/dotfiles/*
```