class Yt < Formula
  desc "TailDay YouTrack CLI"
  homepage "https://github.com/TailDayDev/yt"
  url "https://codeload.github.com/TailDayDev/yt/tar.gz/refs/tags/v0.2.0"
  sha256 "05d655114b5ffe346e94bf7f4dd910c631f9144d5958cdbc4a6cb4b50b320a44"
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
    assert_equal "0.2.0", shell_output("#{bin}/yt version").strip
  end
end
