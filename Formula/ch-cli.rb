class ChCli < Formula
  version "1.1.1"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.1/ch-cli-osx-x64.1.1.1.zip"
    sha256 "dbbd548aae9d599d82a68867379871b01b9bf0080c01ab812c1e16af1ddae669"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.1/ch-cli-linux-x64.1.1.1.tar.gz"
    sha256 "3c34103281cfb03d0e8b818f40abdaf57d2728039469326812a2b456c007a8ca"
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
