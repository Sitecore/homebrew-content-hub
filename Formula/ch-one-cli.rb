class ChOneCli < Formula
  version "1.5.2"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.5.2/ch-one-cli-osx-x64.1.5.2.zip"
    sha256 "0336c6290f27409a6a5a7420b8c39252df423f351da75d6b26ce1684cfb32a94"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.5.2/ch-one-cli-linux-x64.1.5.2.tar.gz"
    sha256 "1e9fc3117c2d297c64e7620e9d3d868a70250f139502ba5b701b7f83b279c9dc"
  end

  desc "A command-line interface (CLI) for interacting with Content Hub ONE"
  homepage "https://github.com/Sitecore/content-hub-one-cli"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"ch-one-cli")
  end

  test do
    system "#{bin}/ch-one-cli"
  end
end
