class Hajimi < Formula
  desc "A minimal AI coding agent CLI in Rust"
  homepage "https://github.com/hajimi-work/hajimi-cli"
  version "0.3.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.17/hajimi-aarch64-apple-darwin.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.17/hajimi-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.17/hajimi-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6addacaf0237fee80bbc30f9e870642f6a5161c32a6190f2c196d72b85a3b37"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.17/hajimi-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba6182bcf407a00756ca41f76e5bf7f249a7a1ba2dfb18043b6cb8a0d4787065"
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
