class ChCli < Formula
  version "1.1.8"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.8/ch-cli-osx-x64.1.1.8.zip"
    sha256 "b2e5f7f8619c0fa2869151279182d97caa333c518782822e58cc1c2e20ca0027"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.8/ch-cli-linux-x64.1.1.8.tar.gz"
    sha256 "ac67aca17855d2e79730a52fe58ff0f43757447bb60fefa741a3d56b45031a4f"
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
