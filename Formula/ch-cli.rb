class ChCli < Formula
  version "1.0.0"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.0.0/ch-cli-osx-x64.1.0.0.zip"
    sha256 "92ece1259511a24a3a2dc5105df814c588327a7045310062e6017322a8cd9f21"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.0.0/ch-cli-linux-x64.1.0.0.tar.gz"
    sha256 "6cc78f3ef2d8cc2bd4c88f9d9b439375fc8ba881189c722237630029ae587232"
  end

  desc "Command-line interface for Sitecore Content Hub"
  homepage "https://github.com/Sitecore/content-hub-cli"

  def install
    bin.install "ch-cli"
  end

  test do
    system "#{bin}/ch-cli"
  end
end
