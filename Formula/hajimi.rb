class Hajimi < Formula
  desc "A minimal AI coding agent CLI in Rust"
  homepage "https://github.com/hajimi-work/hajimi-cli"
  version "0.3.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.21/hajimi-aarch64-apple-darwin.tar.gz"
      sha256 "44fac5aded0ce1ca3e571d91bd0ab39efa3c661f23e9b9f59a032415c1a92d75"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.21/hajimi-x86_64-apple-darwin.tar.gz"
      sha256 "4d4082b1fed538897ac65f94dcc9e5a930b820aa0d03f44222a087788901a24b"
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
