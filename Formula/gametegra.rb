class Gametegra < Formula
  desc "GameTegra CLI"
  homepage "https://github.com/GameTegra/CLI"
  version "1.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GameTegra/CLI/releases/download/v1.0.5/gametegra_1.0.5_darwin_arm64.tar.gz"
      sha256 "2235524b64cd169ce34a697352b48fab29cbb683c10e29b0f180debfa4b5d03c"
    else
      url "https://github.com/GameTegra/CLI/releases/download/v1.0.5/gametegra_1.0.5_darwin_amd64.tar.gz"
      sha256 "e0d19c33961ccb900ce92d1ac76622ffb8b0a5da65f12e52d01af71c2bb9a3ba"
    end
  end

  def install
    bin.install "gametegra"
  end

  test do
    assert_match "version=", shell_output("#{bin}/gametegra version")
  end
end
