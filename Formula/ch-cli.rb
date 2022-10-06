class ChCli < Formula
  version "1.1.4"

  if OS.mac?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.4/ch-cli-osx-x64.1.1.4.zip"
    sha256 "e7629815dbf5570825e9eddd4b6c2126997fc53621f19607d623ef27d297ad22"
  elsif OS.linux?
    url "https://github.com/Sitecore/content-hub-cli/releases/download/1.1.4/ch-cli-linux-x64.1.1.4.tar.gz"
    sha256 "834c57484935359e57b39d4ece3d6e374ba5fc2fd583656c4db3e41e49b592b4"
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
