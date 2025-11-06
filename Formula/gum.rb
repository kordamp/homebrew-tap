# Generated with JReleaser 1.21.0 at 2025-11-06T20:15:11.364446+01:00

class Gum < Formula
  desc "Gum is a Gradle/Maven/Ant/Bach/JBang wrapper written in Go"
  homepage "https://github.com/kordamp/gm"
  version "0.14.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kordamp/gm/releases/download/v0.14.0/gm-0.14.0-linux-arm64.zip"
    sha256 "2a8ffc7b67bde4ae7141f2602fc38012bcee397aa8dc2d28324ab38a601bb413"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kordamp/gm/releases/download/v0.14.0/gm-0.14.0-linux-amd64.zip"
    sha256 "901649fc056f94b09d14ee9f1da74398a4a5ba813cfd905d5585352ef957a1c6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kordamp/gm/releases/download/v0.14.0/gm-0.14.0-darwin-arm64.zip"
    sha256 "d6d6500046755c08fb202e7140d5547bce332fb7186021f7a1092733f219a0ad"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kordamp/gm/releases/download/v0.14.0/gm-0.14.0-darwin-amd64.zip"
    sha256 "e5b5506699d894c10ea667e1b4addc59ccee63a0bee2e8a5004401f13a721a94"
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
