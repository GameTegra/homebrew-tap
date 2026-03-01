class Gametegra < Formula
  desc "GameTegra CLI"
  homepage "https://github.com/GameTegra/CLI"
  version "1.0.2-rc.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GameTegra/CLI/releases/download/v1.0.2-rc.2/gametegra_1.0.2-rc.2_darwin_arm64.tar.gz"
      sha256 "d33db9560236e3aa20266a5cd694ff7c56b8bda87312e1286b049a00421bc305"
    else
      url "https://github.com/GameTegra/CLI/releases/download/v1.0.2-rc.2/gametegra_1.0.2-rc.2_darwin_amd64.tar.gz"
      sha256 "766a1be020a56d5feaee2a0510dbd02112aaaa2a1ef9273ea10b1616a237cf95"
    end
  end

  def install
    bin.install "gametegra"
  end

  test do
    assert_match "version=", shell_output("#{bin}/gametegra version")
  end
end
