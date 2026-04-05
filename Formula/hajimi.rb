class Hajimi < Formula
  desc "A minimal AI coding agent CLI in Rust"
  homepage "https://github.com/hajimi-work/hajimi-cli"
  version "0.3.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.22/hajimi-aarch64-apple-darwin.tar.gz"
      sha256 "f77d7b8b60eeb066c843c7e2ad771aa2c5c925dbf092cccbe676059c1be3c6b1"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.22/hajimi-x86_64-apple-darwin.tar.gz"
      sha256 "ea064655c14ddbc866b59df6aaff12dd4faf72a6020c8b9918be3932e3d67b62"
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
