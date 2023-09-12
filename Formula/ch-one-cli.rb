class ChOneCli < Formula
  version "1.3.0"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.3.0/ch-one-cli-osx-x64.1.3.0.zip"
    sha256 "392f651f84acc2d712aa4474d9e5519d6327ee7e92f190060645b82424be554f"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.3.0/ch-one-cli-linux-x64.1.3.0.tar.gz"
    sha256 "2f5f44f9da776a6a9e84fd4d0f9bab2667d96fe7aa34f314cdd229f79581fb88"
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
