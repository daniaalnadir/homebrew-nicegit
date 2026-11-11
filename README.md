# Homebrew tap for NiceGit

[NiceGit](https://daniaalnadir.github.io/NiceGit/) is a fast, free and open-source Git client.

```sh
brew trust daniaalnadir/nicegit
brew install --cask daniaalnadir/nicegit/nicegit
```

Homebrew asks you to trust a tap that is not part of Homebrew itself before it installs from
it; `brew trust` does that once. Update NiceGit with `brew upgrade --cask nicegit`.

The cask is updated automatically when a new NiceGit release is published, by the
[package managers workflow](https://github.com/daniaalnadir/NiceGit/blob/main/.github/workflows/package-managers.yml)
in the NiceGit repository.
