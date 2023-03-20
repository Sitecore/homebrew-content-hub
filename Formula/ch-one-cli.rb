class ChOneCli < Formula
  version "1.1.1"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.1.1/ch-one-cli-osx-x64.1.1.1.zip"
    sha256 "4e85927642c0041878d9cd77292fe96dc053422183b97d51d5e09ac20273f43c"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.1.1/ch-one-cli-linux-x64.1.1.1.tar.gz"
    sha256 "59568fa1e07a1356c3a7e096e08c46e39a461d97d82188d7de559e0a7f1cba7d"
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
