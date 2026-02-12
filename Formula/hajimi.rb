class Hajimi < Formula
  desc "A minimal AI coding agent CLI in Rust"
  homepage "https://github.com/hajimi-work/hajimi-cli"
  version "0.3.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.13/hajimi-aarch64-apple-darwin.tar.gz"
      sha256 "3c058a739d077c79fc10c7aab62103dae013e5da1b23608e246db7c3095e7159"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.13/hajimi-x86_64-apple-darwin.tar.gz"
      sha256 "b0795f0857a96d8a7e6dee45bce7424c211a062e8a2687b1633f535c3ea956b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.13/hajimi-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1368515ae309dbee8aae520c4ba35624d513253db0574aa5cb2577f89a0ada03"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.13/hajimi-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de0ef9685c0e6c50691abc0cef8b372702837c78e57e7d4b706e88f6f187f39b"
    end
  end

  def install
    bin.install "hajimi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hajimi --version")
  end
end
