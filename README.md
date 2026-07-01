# homebrew-kyu

Homebrew tap for [Kyu](https://github.com/Playground-Labs/Kyu) — a menu bar prompt queue for AI agents.

## Install

```bash
brew install --cask playground-labs/kyu/kyu
```

Or tap first, then install:

```bash
brew tap playground-labs/kyu
brew install --cask kyu
```

## Updating the cask on a new Kyu release

Bump `version` in `Casks/kyu.rb` and refresh **both** sha256 values from the
published DMGs:

```bash
gh release download vX.Y.Z --repo Playground-Labs/Kyu --pattern '*.dmg'
shasum -a 256 Kyu_X.Y.Z_aarch64.dmg Kyu_X.Y.Z_x64.dmg
```

Validate before pushing:

```bash
brew audit --cask --new Casks/kyu.rb
brew style Casks/kyu.rb
```
