class ChOneCli < Formula
  version "1.5.3"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.5.3/ch-one-cli-osx-x64.1.5.3.zip"
    sha256 "2a5abe46b77a20979220e29569065e7516789ddd173bbc16cf4f00b8c48485fd"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.5.3/ch-one-cli-linux-x64.1.5.3.tar.gz"
    sha256 "267dc8516905658aa74f5850b4312eaa0683b1572ac9223b1d360441d7229e5a"
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
