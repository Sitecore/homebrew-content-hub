class ChOneCli < Formula
  version "2.0.1"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/2.0.1/ch-one-cli-osx-x64.2.0.1.zip"
    sha256 "10ac6791d4990de5869709fd116c468b7ebde78eeeeb4fea88704d832389d6a0"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/2.0.1/ch-one-cli-linux-x64.2.0.1.tar.gz"
    sha256 "685e4d443076caa6b440d98663082e6295357de7c5032dedaa8ede4c2c2de0d4"
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
