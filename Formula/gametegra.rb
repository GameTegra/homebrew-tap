class Gametegra < Formula
  desc "GameTegra CLI"
  homepage "https://github.com/GameTegra/CLI"
  version "1.0.3-rc.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GameTegra/CLI/releases/download/v1.0.3-rc.1/gametegra_1.0.3-rc.1_darwin_arm64.tar.gz"
      sha256 "6e8cb15ef9979e5283c71e1aa5d9aa7a401dc810759913cac92edf4fbce7732d"
    else
      url "https://github.com/GameTegra/CLI/releases/download/v1.0.3-rc.1/gametegra_1.0.3-rc.1_darwin_amd64.tar.gz"
      sha256 "f58056f9b6cfb8e513354e4edf823d754f76cf4818f80fcac5078f6b81196aca"
    end
  end

  def install
    bin.install "gametegra"
  end

  test do
    assert_match "version=", shell_output("#{bin}/gametegra version")
  end
end
