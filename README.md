# GameTegra Homebrew Tap

This repository contains the Homebrew formula for installing GameTegra CLI.

## Install GameTegra CLI

```bash
brew install GameTegra/tap/gametegra
```

## Update GameTegra CLI

```bash
brew update
brew upgrade gametegra
```

## Uninstall

```bash
brew uninstall gametegra
```

## What Is Inside This Repo?

- `Formula/gametegra.rb`: Homebrew formula file.
- Version, download URLs, and SHA256 checksums are updated by CI.

## Where Do Downloads Come From?

Formula URLs point to release assets in:

- `https://github.com/GameTegra/CLI/releases`

## Maintainer Notes

- Do not manually edit checksums unless doing an emergency fix.
- Normal flow: tag in private `SuperAppfy/Cli` -> CI builds artifacts -> CI updates this formula.