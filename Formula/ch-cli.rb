class ChCli < Formula
  version "1.1.90"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.90/ch-cli-osx-x64.1.1.90.zip"
    sha256 "8de20e443764c7a4b9137134b28037377979905220aa04e8700906d50b90265a"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.90/ch-cli-linux-x64.1.1.90.tar.gz"
    sha256 "172450c008292acfdbe2eca42d6f93831a914db87aaf4fafc5d4ca053a6e8b97"
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
