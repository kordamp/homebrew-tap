# This file was generated by GoReleaser. DO NOT EDIT.
class Gum < Formula
  desc "Gum is a Gradle/Maven/jbang wrapper written in Go"
  homepage "https://github.com/kordamp/gm"
  version "0.6.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kordamp/gm/releases/download/v0.6.0/gm_Darwin_x86_64.zip"
    sha256 "8cccb8f3f7d26cb77f828bc333fe163c06c12e23eca1a38c8c45846d3e3190bd"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kordamp/gm/releases/download/v0.6.0/gm_Linux_x86_64.tar.gz"
      sha256 "3aaf27ed3be083e4ec50e4d970b10b90b5ce364403ab95c335c0e7872613bd06"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kordamp/gm/releases/download/v0.6.0/gm_Linux_arm64.tar.gz"
        sha256 "73bc15424066f4909f0dda9827d4ee1e23b9e9a7dafcd553cd971c398c8691c5"
      else
        url "https://github.com/kordamp/gm/releases/download/v0.6.0/gm_Linux_armv6.tar.gz"
        sha256 "f4bd69ec2d7dd9e03579dd860fb24c5aba2f59793eda2a839342c8e431fe6051"
      end
    end
  end

  def install
    bin.install "gm"
  end
end
