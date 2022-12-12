class ChOneCli < Formula
  version "1.0.0"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.0.0/ch-one-cli-osx-x64.1.0.0.zip"
    sha256 "d540342442522ad5654bec06a60285eaf30ee4d88d3e582bc665f2cb39f9b134"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.0.0/ch-one-cli-linux-x64.1.0.0.tar.gz"
    sha256 "3223ded1b1451f05913408f9d9d8bd8ad92289412cb02c7c937c12e21b59bbe6"
  end

  desc "A command-line interface (CLI) for interacting with Content Hub ONE"
  homepage "https://github.com/Sitecore/content-hub-one-cli"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"ch-one-cli")
  end

  test do
    system "#{bin}/ch-one-cli"
  end
end
