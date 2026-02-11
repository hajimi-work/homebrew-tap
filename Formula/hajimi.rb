class Hajimi < Formula
  desc "A minimal AI coding agent CLI in Rust"
  homepage "https://github.com/hajimi-work/hajimi-cli"
  version "0.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.9/hajimi-aarch64-apple-darwin.tar.gz"
      sha256 "41384fc5ae738f2853f2d092c10323f280d46f1674c687385fa36b1158cbe5a0"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.9/hajimi-x86_64-apple-darwin.tar.gz"
      sha256 "5a43685c9fb015f921854c8bf84c088e20131d790ffcc4482fae05b7f3e9472d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.9/hajimi-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e268c691653c8df24bc83ea27675ab28f1a3229b10e2a9bbf027723d7d3c9c1b"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.9/hajimi-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "36632c7b116e6443c54c19775691db1f1847f257895b3eaa23bf4d3b1b381d04"
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
