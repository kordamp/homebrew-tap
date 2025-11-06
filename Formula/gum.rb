# Generated with JReleaser 1.21.0 at 2025-11-06T21:02:21.813693984Z

class Gum < Formula
  desc "Gum is a Gradle/Maven/Ant/Bach/JBang wrapper written in Go"
  homepage "https://github.com/kordamp/gm"
  version "0.14.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kordamp/gm/releases/download/v0.14.0/gm-0.14.0-linux-arm64.zip"
    sha256 "4d81986315925dee82ea541525a7de6d0c15287f48d3c0f3cdf604ba225ffd1f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kordamp/gm/releases/download/v0.14.0/gm-0.14.0-linux-amd64.zip"
    sha256 "7a4b5429332ccb9d984bd0c058c21a433f1b409ac390aa9de2d305dcdcbc4f03"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kordamp/gm/releases/download/v0.14.0/gm-0.14.0-darwin-arm64.zip"
    sha256 "bf1b7d83061e5847b4e7e970a5326e53248261dca24d8137a59a22b98437c930"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kordamp/gm/releases/download/v0.14.0/gm-0.14.0-darwin-amd64.zip"
    sha256 "34c994d902326421808b1916a8e57d398d846dd6228de5ff1fec0a835b389847"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/gm" => "gm"
  end

  test do
    output = shell_output("#{bin}/gm --version")
    assert_match "0.14.0", output
  end
end
