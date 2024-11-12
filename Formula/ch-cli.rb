class ChCli < Formula
  version "1.1.54"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.54/ch-cli-osx-x64.1.1.54.zip"
    sha256 "e1efdc4296a44bf75e4527790c393ca2847804e523b51a9712757c5dca8c59ea"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.54/ch-cli-linux-x64.1.1.54.tar.gz"
    sha256 "b1d5b6a48a439638f7770a43e25d505f0d200fd654e75125df10c88aba4797de"
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
