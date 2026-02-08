class Hajimi < Formula
  desc "A minimal AI coding agent CLI in Rust"
  homepage "https://github.com/hajimi-work/hajimi-cli"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.3/hajimi-aarch64-apple-darwin.tar.gz"
      sha256 "dec4bfd8c6dd6861ea063dda3175bddaca7d970bb1cf65102f2ff3f10420fb3f"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.3/hajimi-x86_64-apple-darwin.tar.gz"
      sha256 "71f09024507b6565c92ba87290a3f3dc492420ec3deb2402edccb995544f49de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.3/hajimi-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c30b79c672652633b9137f6ea0d65ba0f6c5786da3c6039dd7c388bc23d16c64"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.3/hajimi-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1adfbb6fe40861346fd863cc3c02b99802766c1173bf1979734e398294bf966"
    end
  end

  def install
    bin.install "hajimi"
    bin.install "hajimi-web"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hajimi --version")
  end
end
