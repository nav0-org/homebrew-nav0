# CLAUDE.md — homebrew-nav0

## Overview

This is the Homebrew tap for Nav0 (formerly nav0-browser). It contains cask formulas for installing Nav0 on macOS via Homebrew.

## Repo Structure

```
Casks/
  nav0.rb            # Current cask formula
```

## Notes

- The CI in `nav0-org/nav0-browser` auto-updates this repo on each release via the `update-homebrew` job
- That CI now writes `Casks/nav0.rb` — so after the next release, this file will be auto-managed
- Cask name: `nav0` | App line: `app "Nav0.app"`
- GitHub repo URLs stay as `nav0-org/nav0-browser` (repo not renamed)
