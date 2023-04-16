# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jkl < Formula
  desc "JKL is a version manager for other command-line tools. It installs tools quickly with minimal input, and helps you switch versions of tools while you work."
  homepage "https://github.com/ivanfetch/jkl"
  version "0.0.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ivanfetch/testjkl/releases/download/v0.0.12/testjkl_0.0.12_darwin_arm64.tar.gz"
      sha256 "2f0d4b29f9ebd9a2b4375338df7aabd4063cea5e3a13181187a76f4a71776fa5"

      def install
        bin.install "testjkl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ivanfetch/testjkl/releases/download/v0.0.12/testjkl_0.0.12_darwin_amd64.tar.gz"
      sha256 "e1425ca01b98e57b2b4f6a1e1aa51554e9d87367136bb94e55da70db701d2efd"

      def install
        bin.install "testjkl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ivanfetch/testjkl/releases/download/v0.0.12/testjkl_0.0.12_linux_amd64.tar.gz"
      sha256 "20b2aae36820bb1649a570cb2a42b48ad84d9e63afcfa09d9390e318385059da"

      def install
        bin.install "testjkl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ivanfetch/testjkl/releases/download/v0.0.12/testjkl_0.0.12_linux_armv6.tar.gz"
      sha256 "0f8aeeaff5284ae298431c6737da730a74ff9ac90117d886dbad410a3c3d0b3a"

      def install
        bin.install "testjkl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ivanfetch/testjkl/releases/download/v0.0.12/testjkl_0.0.12_linux_arm64.tar.gz"
      sha256 "cdf0029097da4178f753f8642ce80e245a77963642a51992eb4015819626a47d"

      def install
        bin.install "testjkl"
      end
    end
  end

  def caveats
    <<~EOS
      You will need to add the jkl shims directory (default ~/.jkl/bin) to your PATH.
    EOS
  end

  test do
    system "#{bin}/jkl version"
  end
end
