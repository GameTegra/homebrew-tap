class Gametegra < Formula
  desc "GameTegra CLI"
  homepage "https://github.com/GameTegra/CLI"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GameTegra/CLI/releases/download/v1.0.4/gametegra_1.0.4_darwin_arm64.tar.gz"
      sha256 "0a0fc596983a61c541d0cb378a3d10305e8dee93bbb2bd1acdb21390ff002070"
    else
      url "https://github.com/GameTegra/CLI/releases/download/v1.0.4/gametegra_1.0.4_darwin_amd64.tar.gz"
      sha256 "991947d014df7609957acc2d06c1abb251d07d9311833ff78ecc28753dcf6aaa"
    end
  end

  def install
    bin.install "gametegra"
  end

  test do
    assert_match "version=", shell_output("#{bin}/gametegra version")
  end
end
