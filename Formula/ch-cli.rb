class ChCli < Formula
  version "1.1.21"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.21/ch-cli-osx-x64.1.1.21.zip"
    sha256 "b5f4d46f040ba58364b11b13c862f67f414f28c40f7dd569b9db469e567aebaf"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.21/ch-cli-linux-x64.1.1.21.tar.gz"
    sha256 "3ecd712a565a7e18c0e33dec1816488c2049dd0c3d9a16d9e4034462c561bf81"
  end

  desc "Command-line interface for Sitecore Content Hub"
  homepage "https://github.com/Sitecore/content-hub-cli"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"ch-cli")
  end

  test do
    system "#{bin}/ch-cli"
  end
end
