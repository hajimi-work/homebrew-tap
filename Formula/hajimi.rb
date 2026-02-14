class Hajimi < Formula
  desc "A minimal AI coding agent CLI in Rust"
  homepage "https://github.com/hajimi-work/hajimi-cli"
  version "0.3.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.15/hajimi-aarch64-apple-darwin.tar.gz"
      sha256 "c6fa098417f48762637984b793134825933bbb38bd8faeeebc2e1be703ba6288"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.15/hajimi-x86_64-apple-darwin.tar.gz"
      sha256 "6ddbcb9cfc2b93777d2ada895a571791d458c0c6030581295c89e94642ae5250"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.15/hajimi-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ec43ec02380cce5e2314b4d5f4be72b8bb50505337adf33652578749504cfda"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.15/hajimi-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "168d64c145437bb8c93aac0c4d1ac66e9de6a8ab21527d39e499e765491ece35"
    end
  end

  def install
    bin.install "hajimi"
    bin.install_symlink "hajimi" => "h"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hajimi --version")
  end
end
