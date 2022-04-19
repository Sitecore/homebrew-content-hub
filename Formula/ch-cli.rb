class ChCli < Formula
  version "1.1.0"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.0/ch-cli-osx-x64.1.1.0.zip"
    sha256 "f5b5c0c74a276a874411cf2299a9b9c70c46d212cc325a14ff4cbbff63c96e2b"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.0/ch-cli-linux-x64.1.1.0.tar.gz"
    sha256 "13ba91ef9eeeca6fa431aea87b0b19e74bbc001b54d0b42e64de2a984bd574ec"
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
