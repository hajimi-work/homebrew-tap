class Hajimi < Formula
  desc "A minimal AI coding agent CLI in Rust"
  homepage "https://github.com/hajimi-work/hajimi-cli"
  version "0.3.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.20/hajimi-aarch64-apple-darwin.tar.gz"
      sha256 "64599f60a320a1cf7a1018680378ae9763079f34cba60582d5491447c2d60fde"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.20/hajimi-x86_64-apple-darwin.tar.gz"
      sha256 "c1980b2b8f249041497ddac101e433867dfd745d02725d6d5f0cddea37228a8f"
    end
  end

  def install
    bin.install "hajimi"
    bin.install_symlink "hajimi" => "ha"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hajimi --version")
  end
end
