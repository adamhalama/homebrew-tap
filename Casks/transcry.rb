cask "transcry" do
  version "0.2.0"
  sha256 "3d052e4078fee810ca5400cc592d5604b173bca3748419aa3e75ff9c83cdbf83"

  url "https://github.com/adamhalama/homebrew-tap/releases/download/transcry-v#{version}/Transcry-#{version}.dmg?v=3d052e40"
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
