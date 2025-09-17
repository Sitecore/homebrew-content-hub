class ChCli < Formula
  version "1.1.100"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.100/ch-cli-osx-x64.1.1.100.zip"
    sha256 "108d802671d7387b30e323d763e88d60d17f884e8821632a1ef8ea15c0af97be"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.100/ch-cli-linux-x64.1.1.100.tar.gz"
    sha256 "02114159d146990ed13e58fd88d55080102bc2f92525fb7064dbde39d3ff377c"
  end

  desc "Command-line interface for Sitecore Content Hub"
  homepage "https://github.com/Sitecore/content-hub-cli"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"ch-cli")
  end

  test do
    system "#{bin}/ch-cli"
  end
end
