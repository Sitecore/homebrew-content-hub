class ChCli < Formula
  version "1.1.23"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.23/ch-cli-osx-x64.1.1.23.zip"
    sha256 "2b61a6daf51e46ddb7e916338cace1a8115a89175b7d8cb967c9e11cebc6a32e"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.23/ch-cli-linux-x64.1.1.23.tar.gz"
    sha256 "988e441ff8a9a0e35ac229d5080093051660edee6186247b50e6e9674fdeab0d"
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
