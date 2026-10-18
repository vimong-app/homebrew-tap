# Vimong Homebrew Tap

Homebrew tap for [Vimong](https://vimong.app/), a document viewer driven by Vim keybindings.

## Install

```sh
brew tap vimong-app/tap
brew trust vimong-app/tap
brew install -y --cask vimong
```

Homebrew refuses to load casks from third-party taps until you trust them.
To trust only this cask instead of the whole tap, use `brew trust --cask vimong-app/tap/vimong`.

## Update

```sh
brew update
brew upgrade -y --cask vimong
```

`-y` skips Homebrew's confirmation prompt (Homebrew 6.0+; drop it on older versions).

## Uninstall

```sh
brew uninstall --cask vimong
```

To also remove app data (settings, caches, saved state):

```sh
brew uninstall --zap --cask vimong
```

## Requirements

- macOS on Apple Silicon (arm64)

## Links

- Website: https://vimong.app/
- Releases: https://github.com/vimong-app/vimong/releases
