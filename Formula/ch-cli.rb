class ChCli < Formula
  version "1.1.59"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.59/ch-cli-osx-x64.1.1.59.zip"
    sha256 "86b4ca7a9b04a8344cc3f26f93871d0eab62d36b173fe7fe3141d97076d69410"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.59/ch-cli-linux-x64.1.1.59.tar.gz"
    sha256 "7187b1da602de322cd2a277ea6e93c3ebb50463ef1147c91fd66220afcd86c83"
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
