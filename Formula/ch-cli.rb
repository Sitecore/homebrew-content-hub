class ChCli < Formula
  version "1.1.82"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.82/ch-cli-osx-x64.1.1.82.zip"
    sha256 "1bc8e9764469c5b88c4cd68802d3bf773d092fb6846fdafd04cc7bbf32ff776d"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.82/ch-cli-linux-x64.1.1.82.tar.gz"
    sha256 "c2f032e7dcb01cc0646eccf6395ce775eb66c67da944ad847cf1e64908b8b5f3"
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
