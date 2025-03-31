class ChCli < Formula
  version "1.1.86"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.86/ch-cli-osx-x64.1.1.86.zip"
    sha256 "b59e75dc585c2647f461c9efcdfbbebf8b06f24ff0de54114a6c19971dccff5e"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.86/ch-cli-linux-x64.1.1.86.tar.gz"
    sha256 "0575dd83b59c4ac73066f81653f4cf9df22adde26526e38e010c7473b42436a1"
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
