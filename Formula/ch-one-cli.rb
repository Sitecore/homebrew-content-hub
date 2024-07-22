class ChOneCli < Formula
  version "2.0.0"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/2.0.0/ch-one-cli-osx-x64.2.0.0.zip"
    sha256 "feafddffff7d6c9327fde6c0dc4d259a7ff7e7ddc55707950c6a18aa03b5e45b"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/2.0.0/ch-one-cli-linux-x64.2.0.0.tar.gz"
    sha256 "16724be6e3bd9b282c604ff1c7ccc84e5b64f1393659f5718dbddff75aab8114"
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
