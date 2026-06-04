class RedSkyCli < Formula
  desc "CLI for Tailday Admin dictionary translations"
  homepage "https://github.com/TailDayDev/red-sky-cli"
  version "0.4.0"
  url "https://github.com/TailDayDev/red-sky-cli.git",
      tag:      "v0.4.0",
      revision: "c877dab6cd7eadfe25ebb80651b25986cf99d18a"
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
