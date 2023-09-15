class ChCli < Formula
  version "1.1.19"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.19/ch-cli-osx-x64.1.1.19.zip"
    sha256 "e9548856f3c9cdd6fe3d1e729b16e341cc7b09af67dad9e4e7e07612ae897573"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.19/ch-cli-linux-x64.1.1.19.tar.gz"
    sha256 "315da32e3aca326dfd84324d19983cf8303ae69cb328be710f406b12ffd4bdd2"
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
