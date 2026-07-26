# Adam Halama's Homebrew Tap

Public Homebrew formulae and casks maintained by Adam Halama.

## Transcry

Install the Apple Silicon CLI and its processing dependencies:

```bash
brew install adamhalama/tap/transcry
```

Install the macOS app and CLI together:

```bash
brew install --cask adamhalama/tap/transcry
```

Upgrade:

```bash
brew update
brew upgrade adamhalama/tap/transcry
brew upgrade --cask adamhalama/tap/transcry
```

Uninstall while preserving jobs:

```bash
brew uninstall --cask adamhalama/tap/transcry
brew uninstall adamhalama/tap/transcry
```

Remove the app and its Application Support data:

```bash
brew uninstall --cask --zap adamhalama/tap/transcry
```

Transcry v0.2.0 is an ad-hoc-signed, unnotarized preview. macOS may require a
one-time approval from **System Settings → Privacy & Security** before the first
app launch. The CLI does not require that approval.

The tap definitions are licensed under the [MIT License](LICENSE).
