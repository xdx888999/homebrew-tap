class Aic < Formula
  desc "Terminal AI CLI tool manager"
  homepage "https://github.com/xdx888999/aic"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xdx888999/aic/releases/download/v0.1.0/aic_darwin_arm64.tar.gz"
      sha256 "a7370265cbf0d789a784e0dfafd5b52059fd3820de78e793527995276032aae3"
    else
      url "https://github.com/xdx888999/aic/releases/download/v0.1.0/aic_darwin_amd64.tar.gz"
      sha256 "5eb9502c8bdf273e217ab0c661f7b029ed10ee9e2b6c2199d54afea5f8288cbe"
    end
  end

  def install
    bin.install "aic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aic --version")
  end
end
