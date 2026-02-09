class Hajimi < Formula
  desc "A minimal AI coding agent CLI in Rust"
  homepage "https://github.com/hajimi-work/hajimi-cli"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.5/hajimi-aarch64-apple-darwin.tar.gz"
      sha256 "224257aea34e2d40ab7f077da26f47a0be6815e4369c3858c943f8947ee5820d"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.5/hajimi-x86_64-apple-darwin.tar.gz"
      sha256 "a5c50c37818ea151bad585f199977d09a99222c519fc51a9838be80adbac7af7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.5/hajimi-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ea63b1cfbb97d9c071727cd9e362d45f97352be3cb68bdb5f70646b2a8f1ea37"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.5/hajimi-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "55af9b504f95019654456a5035fad49f36220ad879d5eb7c79d7d33315a5ffe2"
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
