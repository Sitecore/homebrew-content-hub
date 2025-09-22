class ChCli < Formula
  version "1.1.101"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.101/ch-cli-osx-x64.1.1.101.zip"
    sha256 "0e26947a48f42e8a8948fba88b36a1195ae6938b3b5d8ada9839c2121d10dd1f"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.101/ch-cli-linux-x64.1.1.101.tar.gz"
    sha256 "d3e76eb0f01c06b4376617ccbfb2264231c17f77d0f092b778af50c4eca5b8ad"
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
