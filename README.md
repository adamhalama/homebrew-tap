# Adam Halama's Homebrew Tap

Public Homebrew formulae and casks maintained by Adam Halama.

## Transcry

Install the macOS app and the CLI it depends on:

```bash
brew install --cask adamhalama/tap/transcry
```

Install the Apple Silicon CLI on its own, with its processing dependencies:

```bash
brew install adamhalama/tap/transcry-cli
```

Both provide the `transcry` command.

Recent Homebrew versions ask you to trust a third-party tap before loading it:

```bash
brew trust adamhalama/tap
```

Upgrade:

```bash
brew update
brew upgrade --cask adamhalama/tap/transcry
brew upgrade adamhalama/tap/transcry-cli
```

Uninstall while preserving jobs:

```bash
brew uninstall --cask adamhalama/tap/transcry
brew uninstall adamhalama/tap/transcry-cli
```

Remove the app and its Application Support data:

```bash
brew uninstall --cask --zap adamhalama/tap/transcry
```

Transcry v0.2.0 is an ad-hoc-signed, unnotarized preview. macOS may require a
one-time approval from **System Settings → Privacy & Security** before the first
app launch. The CLI does not require that approval.

The tap definitions are licensed under the [MIT License](LICENSE).
