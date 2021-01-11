class ChCli < Formula
    version "0.9.0-preview"
  
    if OS.mac?
      url "https://github.com/Sitecore/content-hub-cli/releases/download/0.9.0-preview/ch-cli-osx-x64.0.9.0-preview.zip"
      sha256 "5608a17b1a2ee0ebfe8505000b7db7a60fa8433e89c49ccd32f11e6d9a0601f4"
    elsif OS.linux?
      url "https://github.com/Sitecore/content-hub-cli/releases/download/0.9.0-preview/ch-cli-linux-x64.0.9.0-preview.tar.gz"
      sha256 "23799b9dcef871ed09943a4b77b1b1df77439b07ff04710237cb9d04dd86b549"
    end
  
    desc "Command-line interface for Sitecore Content Hub"
    homepage "https://github.com/Sitecore/content-hub-cli"
  
    bottle :unneeded
  
    def install
      bin.install "ch-cli"
    end
  
    test do
      system "#{bin}/ch-cli"
    end
  end
  