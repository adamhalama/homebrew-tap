class TranscryCli < Formula
  desc "Local meeting transcription with automatic speaker grouping"
  homepage "https://github.com/adamhalama/homebrew-tap"
  url "https://github.com/adamhalama/homebrew-tap/releases/download/transcry-v0.3.0/transcry-0.3.0.tar.gz?v=3f3a6a49"
  version "0.3.0"
  sha256 "3f3a6a49e0bc4c556e2b9df0b45601bf0c05d44bd20d799f30f82459cae2c164"
  license "MIT"

  depends_on arch: :arm64
  depends_on "ffmpeg"
  depends_on macos: :sonoma
  depends_on "python@3.14"
  depends_on "whisperkit-cli"

  def install
    libexec.install "LICENSE", "QUICKSTART.md", "README.md", "bin", "scripts"
    bin.write_exec_script libexec/"bin/transcry"
  end

  test do
    assert_match "transcry #{version} (API 1)", shell_output("#{bin}/transcry --version")

    output = shell_output(
      "TRANSCRY_JOBS_ROOT='#{testpath}/jobs' #{bin}/transcry jobs --json",
    )
    assert_equal({ "api_version" => 1, "jobs" => [] }, JSON.parse(output))
  end
end
