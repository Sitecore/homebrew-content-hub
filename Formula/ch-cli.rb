class ChCli < Formula
  version "1.1.88"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.88/ch-cli-osx-x64.1.1.88.zip"
    sha256 "42c1df4ebd251c659b8112122c4575b9141c6fab5db98b7ecaec827953af10db"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.88/ch-cli-linux-x64.1.1.88.tar.gz"
    sha256 "4449c7f081d0f348932c01f49f2ebc334c910bdffb772a2141b1fd54edbbd7db"
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
