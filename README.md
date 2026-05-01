# homebrew-whisky

Homebrew tap for [frankea/Whisky](https://github.com/frankea/Whisky), an active community fork of the archived [whisky-app/whisky](https://github.com/whisky-app/whisky) Wine wrapper for macOS.

## Why this tap exists

`brew install --cask whisky` from the default cask repo installs the original `whisky-app/whisky` build, which was [archived in April 2025](https://github.com/whisky-app/whisky) and marked deprecated in homebrew-cask shortly after. Until the official cask is updated, this tap provides the active fork's signed and notarized builds.

## Install

```bash
brew install --cask frankea/whisky/whisky
```

Updates flow through `brew upgrade --cask` after that.

## Uninstall

```bash
brew uninstall --cask whisky
```

To also remove user data (bottles, settings, caches):

```bash
brew uninstall --cask --zap whisky
```

## What's in the cask

- Whisky.app signed and notarized for macOS Sequoia 15.0+ on Apple Silicon
- Auto-updates via Sparkle from `https://frankea.github.io/Whisky/appcast.xml`
- See the [main repo](https://github.com/frankea/Whisky) for the changelog, upstream issue audit, and issue tracking

## Migrating from the archived original

The fork uses a different bundle identifier (`com.franke.Whisky`), so it does not see existing bottles from the archived app. Before installing:

1. Quit the original Whisky.
2. Export bottles you want to keep via the original app's **Bottle → Export** menu.
3. `brew uninstall --cask whisky` removes the archived original.
4. `brew install --cask frankea/whisky/whisky` installs this fork.
5. Re-import bottles in the new app via **File → Import Bottle**.

If there are no bottles to keep, skip the export. The new app creates a fresh bottle on first launch.
