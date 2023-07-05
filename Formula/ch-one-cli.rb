class ChOneCli < Formula
  version "1.2.0"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.2.0/ch-one-cli-osx-x64.1.2.0.zip"
    sha256 "c3b4767e0f15797b563900188bf2048e713e81c18f5b61a764f95fe07abc190a"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.2.0/ch-one-cli-linux-x64.1.2.0.tar.gz"
    sha256 "f06f2f26b4db6af3e27d963e53de560dbb7382a5e737a65a3cc37474f098c2bb"
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
