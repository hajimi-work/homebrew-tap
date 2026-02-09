class Hajimi < Formula
  desc "A minimal AI coding agent CLI in Rust"
  homepage "https://github.com/hajimi-work/hajimi-cli"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.6/hajimi-aarch64-apple-darwin.tar.gz"
      sha256 "68c9788e49c1710aeaddbf5c22c6839effb03482e6d7329ecef06cf028c5f8ef"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.6/hajimi-x86_64-apple-darwin.tar.gz"
      sha256 "203aa6ad24389563765fbc517b24a9fbc5a97c6a00fa181bcb43761b19f89434"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.6/hajimi-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7bba3ca02465d0f0ebfe62993a33e423f1bcefa68c6de14c833312843c0f44dc"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.6/hajimi-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8bf94ade832007ec95c879d48670b32e16c4db68c1f3515fb43e9c9a18885d3"
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
