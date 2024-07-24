class ChCli < Formula
  version "1.1.52"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.52/ch-cli-osx-x64.1.1.52.zip"
    sha256 "673bbad48097f63d8d2acb9dcc668800d4c0d89e9aca6f63ee21fcae4737767a"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.52/ch-cli-linux-x64.1.1.52.tar.gz"
    sha256 "7dcf411c7ddb9beaba4307bea308720cc5caa273ec360e446f2164a0f7771d13"
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
