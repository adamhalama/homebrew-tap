class Transcry < Formula
  desc "Local meeting transcription with automatic speaker grouping"
  homepage "https://github.com/adamhalama/homebrew-tap"
  url "https://github.com/adamhalama/homebrew-tap/releases/download/transcry-v0.2.0/transcry-0.2.0.tar.gz?v=c1716324"
  version "0.2.0"
  sha256 "c1716324952749f4a77363f7e836293f09b6c49a783ac97885eb39f8c1be86c1"
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
