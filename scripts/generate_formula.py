import os

version = os.environ["VERSION"]
version_num = version.lstrip("v")
sha_aarch64_darwin = os.environ["SHA_AARCH64_DARWIN"]
sha_x86_64_darwin = os.environ["SHA_X86_64_DARWIN"]
sha_x86_64_linux = os.environ["SHA_X86_64_LINUX"]
sha_aarch64_linux = os.environ["SHA_AARCH64_LINUX"]

REPO = "https://github.com/hajimi-work/hajimi-releases/releases/download"

formula = f'''class Hajimi < Formula
  desc "A minimal AI coding agent CLI in Rust"
  homepage "https://github.com/hajimi-work/hajimi-cli"
  version "{version_num}"
  license "MIT"

  on_macos do
    on_arm do
      url "{REPO}/{version}/hajimi-aarch64-apple-darwin.tar.gz"
      sha256 "{sha_aarch64_darwin}"
    end
    on_intel do
      url "{REPO}/{version}/hajimi-x86_64-apple-darwin.tar.gz"
      sha256 "{sha_x86_64_darwin}"
    end
  end

  on_linux do
    on_arm do
      url "{REPO}/{version}/hajimi-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "{sha_aarch64_linux}"
    end
    on_intel do
      url "{REPO}/{version}/hajimi-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "{sha_x86_64_linux}"
    end
  end

  def install
    bin.install "hajimi"
  end

  test do
    assert_match version.to_s, shell_output("#{{bin}}/hajimi --version")
  end
end
'''

print(formula, end="")
