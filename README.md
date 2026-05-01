# homebrew-whisky

Homebrew tap for [frankea/Whisky](https://github.com/frankea/Whisky) — the active community fork of the archived [whisky-app/whisky](https://github.com/whisky-app/whisky) Wine wrapper for macOS.

## Why this tap exists

`brew install --cask whisky` from the default cask repo installs the **archived** original (last release: April 2025). Until that cask is updated to point here, this tap provides the active fork's latest builds.

## Install

```bash
brew install --cask frankea/whisky/whisky
```

That's it. Updates flow through `brew upgrade --cask` after that.

## Uninstall

```bash
brew uninstall --cask whisky
```

To also remove user data (bottles, settings, caches):

```bash
brew uninstall --cask --zap whisky
```

## What you get

- **Whisky.app** signed and notarized for macOS Sequoia (15.0+) on Apple Silicon
- Auto-updates via Sparkle from `https://frankea.github.io/Whisky/appcast.xml`
- Active development — see the [main repo](https://github.com/frankea/Whisky) for changelog, audit, and issue tracking

## Migrating from the archived original

The fork uses a different bundle identifier (`com.franke.Whisky`), so it won't see your existing bottles automatically. Before installing:

1. Quit the original Whisky.
2. Export bottles you want to keep via the original app's **Bottle → Export** menu.
3. `brew uninstall --cask whisky` (this removes the archived original)
4. `brew install --cask frankea/whisky/whisky`
5. Re-import bottles in the new app via **File → Import Bottle**.

If you have no critical bottles, skip the export — the new app creates a fresh bottle on first launch.
