class ChCli < Formula
  version "1.1.75"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.75/ch-cli-osx-x64.1.1.75.zip"
    sha256 "86e0279aebdafd5b6ceebff9a5ebeb0fdfb7da4317b6ef2a62e3254709cfdc6e"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.75/ch-cli-linux-x64.1.1.75.tar.gz"
    sha256 "f7a3fb3255094e69717b87b8698d139230e21a30fd81b622bf3af9677a030b93"
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
