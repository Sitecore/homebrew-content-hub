class ChOneCli < Formula
  version "1.5.0"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.5.0/ch-one-cli-osx-x64.1.5.0.zip"
    sha256 "afc66b05085aa2a1f1405f366081f7bb259036a92203c06109bc200023960dba"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.5.0/ch-one-cli-linux-x64.1.5.0.tar.gz"
    sha256 "cb2fe2c55303a8bab240e177e70eb7021b481ecab0ae989006fad85bb28dc9bf"
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
