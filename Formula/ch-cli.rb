class ChCli < Formula
  version "1.1.6"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.6/ch-cli-osx-x64.1.1.6.zip"
    sha256 "30beda91f44b93e1529de8ea81a2cca6b8b626104756f5d2a53f4eae3a22bae5"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.6/ch-cli-linux-x64.1.1.6.tar.gz"
    sha256 "b18a85a9fa3fa2454ad3a174cf7c142da7f9d0d54cabe4c98cf46e347cd97b01"
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
