class ChOneCli < Formula
  version "1.0.1"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.0.1/ch-one-cli-osx-x64.1.0.1.zip"
    sha256 "f56846012046ca1bf252cd715291831251711dcbafa6a3c5ed45a8087cf59f5d"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.0.1/ch-one-cli-linux-x64.1.0.1.tar.gz"
    sha256 "56970a002a800bb996ba68a889509b603ce5df619918f20e9ebe8a669b19091e"
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
