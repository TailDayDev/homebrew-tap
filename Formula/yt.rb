class Yt < Formula
  desc "TailDay YouTrack CLI"
  homepage "https://github.com/TailDayDev/yt"
  url "https://codeload.github.com/TailDayDev/yt/tar.gz/refs/tags/v0.3.1"
  sha256 "24612e929fa0579981fd0ffc99b18301d12f7abbbc2fca7378001a62d49e2430"
  license "UNLICENSED"

  depends_on "node"

  def install
    libexec.install Dir[
      "README.md",
      "Screenshot 2026-04-06 at 10.31.05.png",
      "Screenshot 2026-04-06 at 10.31.36.png",
      "package.json",
      "yt",
      "yt_params_schema.js",
      "api",
      "config",
      "skills-codex",
      "tests",
    ]

    bin.install_symlink libexec/"yt"
  end

  test do
    assert_equal "0.3.1", shell_output("#{bin}/yt version").strip
  end
end
