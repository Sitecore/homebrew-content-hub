class ChOneCli < Formula
  version "2.1.0"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/2.1.0/ch-one-cli-osx-x64.2.1.0.zip"
    sha256 "75e54f962b677c8930cf6e03ab8f2f50f934808b7b7bcc5e9e70bf76c4d8d18d"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-one-cli/releases/download/2.1.0/ch-one-cli-linux-x64.2.1.0.tar.gz"
    sha256 "598364b25a54bba884e8f66fd6e413414e8cdfb540115b75682883b89d563f6e"
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
