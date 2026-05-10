class RedSkyCli < Formula
  desc "CLI for Tailday Admin dictionary (gettranslationlist)"
  homepage "https://github.com/TailDayDev/red-sky-cli"
  version "0.1.0"
  url "https://codeload.github.com/TailDayDev/red-sky-cli/tar.gz/refs/tags/v0.1.0"
  sha256 "93846c47ee57d46df89d3d4a9a8e453103598b748c597bc9e545edcfe747b9d6"
  license "UNLICENSED"

  def install
    pkg = Dir.glob((buildpath / "red-sky-cli-*").to_s).first
    odie "Expected red-sky-cli-* extraction directory" if pkg.nil?

    bin.install Pathname(pkg) / "bin" / "red-sky"
  end

  test do
    out = shell_output("#{bin}/red-sky dict --help")
    assert_match "gettranslationlist", out
  end
end
