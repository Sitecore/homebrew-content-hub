class ChCli < Formula
  version "1.1.7"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.7/ch-cli-osx-x64.1.1.7.zip"
    sha256 "72b9ba416175f73519b9a672d7b502cf9a9d683a954451c3bc76ced60e4b8a0d"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.7/ch-cli-linux-x64.1.1.7.tar.gz"
    sha256 "b7b13e6596fcea0859ae1266b0c5f24e899849ecfe66461f3f058a64031d271e"
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
