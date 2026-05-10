class RedSkyCli < Formula
  desc "CLI for Tailday Admin dictionary (gettranslationlist)"
  homepage "https://github.com/TailDayDev/red-sky-cli"
  version "0.1.0"
  url "https://codeload.github.com/TailDayDev/red-sky-cli/tar.gz/refs/tags/v0.1.0"
  sha256 "93846c47ee57d46df89d3d4a9a8e453103598b748c597bc9e545edcfe747b9d6"
  license "UNLICENSED"

  def install
    root = Dir.glob("#{buildpath}/bin/red-sky").first ? buildpath.to_s : "#{buildpath}/red-sky-cli-#{version}"
    script = "#{root}/bin/red-sky"

    odie "Cannot find #{script}" unless File.exist?(script)

    bin.install script
  end

  test do
    out = shell_output("#{bin}/red-sky dict --help")
    assert_match "gettranslationlist", out
  end
end
