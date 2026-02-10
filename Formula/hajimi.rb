class Hajimi < Formula
  desc "A minimal AI coding agent CLI in Rust"
  homepage "https://github.com/hajimi-work/hajimi-cli"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.7/hajimi-aarch64-apple-darwin.tar.gz"
      sha256 "c86d1e59bc5daeccb097ddadaa086e479a2afd2eb24b7add545bb84cc9ec6a2a"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.7/hajimi-x86_64-apple-darwin.tar.gz"
      sha256 "220019ad5fc3da0ee011a5469ebe0d0b256e1294360baabcc211b00eac1db730"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.7/hajimi-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e46e9b40456567e39be68277f0ada79bb614feafe84c159488ab4ed83dea72f0"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.7/hajimi-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06f055c01d63c8df7947e4592381f0d445fb53fea7d1c31a7d11057a1bbf884c"
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
