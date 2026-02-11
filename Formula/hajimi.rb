class Hajimi < Formula
  desc "A minimal AI coding agent CLI in Rust"
  homepage "https://github.com/hajimi-work/hajimi-cli"
  version "0.3.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.10/hajimi-aarch64-apple-darwin.tar.gz"
      sha256 "74dba66e247ed3e7ee13eba5ad8f02eae9d2c43e05e0773d90a8186fea69d7cd"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.10/hajimi-x86_64-apple-darwin.tar.gz"
      sha256 "cde11866063afc9b4bc1ec984016dac5a6f4ab5c472d70c684559b73b56612d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.10/hajimi-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4f62c66cc304023994265b883ff6d37b10959aaae60123af19b9f236a4e5174e"
    end
    on_intel do
      url "https://github.com/hajimi-work/hajimi-releases/releases/download/v0.3.10/hajimi-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e546ce446bc8c8df878689a4b11218bec3a15e28ec413e5937c5b8b6c1a2cd9"
    end
  end

  def install
    bin.install "hajimi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hajimi --version")
  end
end
