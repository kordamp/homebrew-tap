# Generated with JReleaser 1.22.0 at 2026-02-27T15:13:02.640615515Z

class Pomchecker < Formula
  desc "Checks POM files may be uploaded to Maven Central"
  homepage "https://kordamp.org/pomchecker"
  url "https://github.com/kordamp/pomchecker/releases/download/v1.15.0/pomchecker-1.15.0.zip"
  version "1.15.0"
  sha256 "4b19b67ffee054885222cbab74b68736d930f63edb47cddb01a305fed4da3a84"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/pomchecker" => "pomchecker"
  end

  test do
    output = shell_output("#{bin}/pomchecker --version")
    assert_match "1.15.0", output
  end
end
