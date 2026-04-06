class Yt < Formula
  desc "TailDay YouTrack CLI"
  homepage "https://github.com/TailDayDev/yt"
  url "https://codeload.github.com/TailDayDev/yt/tar.gz/refs/tags/v0.3.0"
  sha256 "93c74bb699f4131481aba7008c5f5bdb73feb90b62a018ff4c35e00d7182990f"
  license "UNLICENSED"

  depends_on "node"

  def install
    libexec.install Dir[
      "README.md",
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
    assert_equal "0.3.0", shell_output("#{bin}/yt version").strip
  end
end
