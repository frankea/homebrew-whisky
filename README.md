# homebrew-whisky

[![Latest release](https://img.shields.io/github/v/release/frankea/Whisky?filter=app-v*&label=release)](https://github.com/frankea/Whisky/releases/latest)

Homebrew tap for [frankea/Whisky](https://github.com/frankea/Whisky), the actively maintained fork of the archived [whisky-app/whisky](https://github.com/whisky-app/whisky) Wine wrapper for macOS.

## Why this tap exists

The original Whisky was [archived in April 2025](https://github.com/whisky-app/whisky), and its cask in homebrew-cask was deprecated as unmaintained shortly after — so `brew install --cask whisky` from the default cask repo still installs that frozen build. This tap ships the maintained fork's signed and notarized releases, so `brew upgrade` keeps tracking active development.

## Requirements

- macOS 15 (Sequoia) or later
- Apple Silicon (arm64) — Intel Macs are not supported

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

- Whisky.app, signed and notarized
- Auto-updates via Sparkle from `https://frankea.github.io/Whisky/appcast.xml`
- See the [main repo](https://github.com/frankea/Whisky) for the changelog, upstream issue audit, and issue tracking

## Migrating from the archived original

Whisky 3.1.0 added a built-in importer, so the old manual export/import dance is no longer needed.

1. Install this fork (see [Install](#install)). If `brew` reports a conflict with an existing `whisky` cask, remove the original first: `brew uninstall --cask whisky`.
2. Launch Whisky and choose **File → Migrate from the Original Whisky…**.
3. Tick the bottles you want to bring over and import. They're referenced in place — your files aren't moved or copied, and the original app keeps working — so the import is non-destructive.

If no bottles from the original are found there's nothing to migrate; the app creates a fresh bottle on first launch.
