class ChOneCli < Formula
  version "2.0.1"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/2.0.1/ch-one-cli-osx-x64.2.0.1.zip"
    sha256 "f1ce9d810335cd9cce5c0da2080bfaab764f0fdfddb6467f3c1dcd5007ba0d27"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/2.0.1/ch-one-cli-linux-x64.2.0.1.tar.gz"
    sha256 "3232205cfec788e625de2241b17e2515a8831fdc3522eb2fc966ecbdc0a6087a"
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
