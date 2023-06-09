# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jkl < Formula
  desc "JKL is a version manager for other command-line tools. It installs tools quickly with minimal input, and helps you switch versions of tools while you work."
  homepage "https://github.com/ivanfetch/jkl"
  version "0.0.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ivanfetch/testjkl/releases/download/v0.0.13/testjkl_0.0.13_darwin_amd64.tar.gz"
      sha256 "cf1c96987eecaa4e622ba2b00990c3f2aab056a021689edf5c6793f6a7b6e25d"

      def install
        bin.install "testjkl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ivanfetch/testjkl/releases/download/v0.0.13/testjkl_0.0.13_darwin_arm64.tar.gz"
      sha256 "623cf03d8410a7ce4281266f29cc0ac047c4b81e77e4f9346e8ca48e36b534e8"

      def install
        bin.install "testjkl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ivanfetch/testjkl/releases/download/v0.0.13/testjkl_0.0.13_linux_amd64.tar.gz"
      sha256 "7f84f5614bf4d20fd58d46e15062912c4695be7bcc77a351082df3c96aca17a2"

      def install
        bin.install "testjkl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ivanfetch/testjkl/releases/download/v0.0.13/testjkl_0.0.13_linux_armv6.tar.gz"
      sha256 "52279b387ada49380bde474301a4f91dd7aebe2a580d3401c71f4888ca58bd54"

      def install
        bin.install "testjkl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ivanfetch/testjkl/releases/download/v0.0.13/testjkl_0.0.13_linux_arm64.tar.gz"
      sha256 "7d46da4fb7f0868c75987bb3d4db19eb64849e365711d74526b0fb0f520b6f55"

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
