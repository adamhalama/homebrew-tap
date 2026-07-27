cask "transcry" do
  version "0.3.0"
  sha256 "9472ad40a96c5f7fd6724c9d4c2cf8c9e9c82b132058b8f5152acad1aa0493ab"

  url "https://github.com/adamhalama/homebrew-tap/releases/download/transcry-v#{version}/Transcry-#{version}.dmg?v=9472ad40"
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
