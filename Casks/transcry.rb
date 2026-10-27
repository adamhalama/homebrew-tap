cask "transcry" do
  version "0.4.0"
  sha256 "21ad343acc20fb3f168d97da5519cbae91ab1a5dbec8a1c3c17c5fb1c2c98c4a"

  url "https://github.com/adamhalama/homebrew-tap/releases/download/transcry-v#{version}/Transcry-#{version}.dmg?v=21ad343a"
  name "Transcry"
  desc "Native app for local meeting transcription and speaker naming"
  homepage "https://github.com/adamhalama/homebrew-tap"

  depends_on formula: "adamhalama/tap/transcry-cli"
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
