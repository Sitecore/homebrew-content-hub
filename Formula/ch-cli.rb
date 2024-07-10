class ChCli < Formula
  version "1.1.48"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.48/ch-cli-osx-x64.1.1.48.zip"
    sha256 "6bbd339100805cf9f5f242c60b7b11b1b17e4ed79219e94a5ad0eef043445b98"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.48/ch-cli-linux-x64.1.1.48.tar.gz"
    sha256 "1e51ebfc6a4e94163cf1168ae02229ff70bc657ce8b42a31965e46a4ca8190fc"
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
