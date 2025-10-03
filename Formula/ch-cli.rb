class ChCli < Formula
  version "1.1.102"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.102/ch-cli-osx-x64.1.1.102.zip"
    sha256 "f7a1d3b4d1eeffbd21c01a2a4fea766d543fb17619f84f7462f7c4c9dbb4efba"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.102/ch-cli-linux-x64.1.1.102.tar.gz"
    sha256 "3027ae91550371235c101d8373518723339f9b1f1f37292304b73e0eb3f10b3b"
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
