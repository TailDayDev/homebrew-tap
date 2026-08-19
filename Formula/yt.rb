class Yt < Formula
  desc "TailDay YouTrack CLI"
  homepage "https://github.com/TailDayDev/yt"
  url "https://codeload.github.com/TailDayDev/yt/tar.gz/refs/tags/v0.4.0"
  sha256 "eb54c409379974351ce8c129791e47e87a66ce20682fd84e9efc9bc0f27ba7d5"
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
    assert_equal "0.4.0", shell_output("#{bin}/yt version").strip
  end
end
