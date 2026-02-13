class Hajimi < Formula
  desc "A minimal AI coding agent CLI in Rust"
  homepage "https://github.com/hajimi-work/hajimi-cli"
  version "0.3.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.14/hajimi-aarch64-apple-darwin.tar.gz"
      sha256 "7ac7160d4bad87e1664066a32198b94c6d61f6f0feaa47d02df87cc7ad78c5ab"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.14/hajimi-x86_64-apple-darwin.tar.gz"
      sha256 "4b488af106fa5f6bd0d49feb7cbcc867565b61ab9d36288fb43f80bd077febd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.14/hajimi-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "718607874b0fd41f5233a22d508f50f0a66b0391dea0cfe3d8e86de811688d75"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.14/hajimi-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33ad2a5bb734ed2e86ecab4308fc2bedf95196813dc3c7a8c76d027040c98b8a"
    end
  end

  def install
    bin.install "hajimi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hajimi --version")
  end
end
