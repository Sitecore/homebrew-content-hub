class ChOneCli < Formula
  version "1.5.4"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.5.4/ch-one-cli-osx-x64.1.5.4.zip"
    sha256 "12f883127ec3c1c4f237278499f4bb14fc1bac40db9951355870cc142adc0e5f"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/1.5.4/ch-one-cli-linux-x64.1.5.4.tar.gz"
    sha256 "3180c238083259d1eb9f88f14b905471d3b0a1bf24e221fe460d91fc6b3a659a"
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
