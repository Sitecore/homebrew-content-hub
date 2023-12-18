class ChOneCli < Formula
  version "1.3.0"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.3.0/ch-one-cli-osx-x64.1.3.0.zip"
    sha256 "6b9fd0782ab941fa86151ffce63f49e4c0b0930faeb462f6c584e2c59a57cf14"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.3.0/ch-one-cli-linux-x64.1.3.0.tar.gz"
    sha256 "11abaa65479480fcd03a3aa2d5dec378d2499a94d49cb2581b3550d882b66ad0"
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
