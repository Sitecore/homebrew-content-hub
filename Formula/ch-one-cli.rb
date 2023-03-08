class ChOneCli < Formula
  version "1.1.0"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.1.0/ch-one-cli-osx-x64.1.1.0.zip"
    sha256 "43615aba88f15827c2f0b83e766818f00de18e5b17d361e2acc050726a265b02"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.1.0/ch-one-cli-linux-x64.1.1.0.tar.gz"
    sha256 "f250699ae416372d767a5dba441e55a85f71c3f7d905a451a6eae74c19d3b6c8"
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
