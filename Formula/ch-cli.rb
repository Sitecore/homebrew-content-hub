class ChCli < Formula
  version "1.1.5"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.5/ch-cli-osx-x64.1.1.5.zip"
    sha256 "f7710302679799701e023e162631d25f1bb4a7e82455503dbcb0fcca7daf8161"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.5/ch-cli-linux-x64.1.1.5.tar.gz"
    sha256 "22522b054d35fe1cd536c873e248404a2db0d910b33e5c8f45c809b876215ca6"
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
