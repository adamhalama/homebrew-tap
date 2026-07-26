cask "transcry" do
  version "0.1.0"
  sha256 "214a37fe7eb5780662b9883db02febfb27b8bb11f657936d399303cf7c09395e"

  url "https://github.com/adamhalama/homebrew-tap/releases/download/transcry-v#{version}/Transcry-#{version}.dmg"
  name "Transcry"
  desc "Native app for local meeting transcription and speaker naming"
  homepage "https://github.com/adamhalama/homebrew-tap"

  depends_on formula: "adamhalama/tap/transcry"
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Transcry.app"

  zap trash: "~/Library/Application Support/Transcry"

  caveats <<~EOS
    Transcry #{version} is an ad-hoc-signed, unnotarized preview.
    If macOS blocks the first launch, approve Transcry under:
      System Settings → Privacy & Security
    The cask intentionally preserves macOS quarantine protections.
  EOS
end
