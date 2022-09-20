class ChCli < Formula
  version "1.1.2"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.2/ch-cli-osx-x64.1.1.2.zip"
    sha256 "9d7904f505043a0afb7d8063dc982d769ce1c64ecc01155b88c96640cf31dcb7"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.2/ch-cli-linux-x64.1.1.2.tar.gz"
    sha256 "922e7bc9585100a7865d29f0774740317e7679017cb89bf9a702955af5b6e01d"
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
