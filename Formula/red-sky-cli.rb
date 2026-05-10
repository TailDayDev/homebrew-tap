class RedSkyCli < Formula
  desc "CLI for Tailday Admin dictionary (gettranslationlist)"
  homepage "https://github.com/TailDayDev/red-sky-cli"
  version "0.2.0"
  url "https://codeload.github.com/TailDayDev/red-sky-cli/tar.gz/refs/tags/v0.2.0"
  sha256 "28166b5b0ec17bbf43d99aaf1138c9275c209668a6601fb13ea57494022776a6"
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
