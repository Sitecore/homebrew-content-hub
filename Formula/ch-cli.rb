class ChCli < Formula
  version "1.1.9"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.9/ch-cli-osx-x64.1.1.9.zip"
    sha256 "a27888f5a1bbd99a0015d6c74c2b784566d6689f462646041b786ffe95a98a28"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.9/ch-cli-linux-x64.1.1.9.tar.gz"
    sha256 "91e31e1bdaefd598cda6a73f17ab0cb0e7df5704c1d0850b8faaeb7068140e62"
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
