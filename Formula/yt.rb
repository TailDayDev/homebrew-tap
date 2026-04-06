class Yt < Formula
  desc "TailDay YouTrack CLI"
  homepage "https://github.com/TailDayDev/yt"
  url "https://codeload.github.com/TailDayDev/yt/tar.gz/refs/tags/v0.1.0"
  sha256 "36b4c9731a00045aad4274dee5f73b3ad3fb0d31b03769240d2d8a70f533ff30"
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
      "skill",
      "tests",
    ]

    bin.install_symlink libexec/"yt"
  end

  test do
    assert_equal "0.1.0", shell_output("#{bin}/yt version").strip
  end
end
