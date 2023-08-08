# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cru < Formula
  desc "utility to update container image references"
  homepage "https://github.com/binxio/cru"
  version "2.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/binxio/cru/releases/download/2.0.2/cru_2.0.2_darwin_arm64.tar.gz"
      sha256 "66cd22e70e06e1c77072465cb42d31f290f06a588a4c3d7ef7681d37717853c5"

      def install
        bin.install "cru"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/binxio/cru/releases/download/2.0.2/cru_2.0.2_darwin_amd64.tar.gz"
      sha256 "a9db4654f70166fa03699b0486fde745b046b4f712ab03d8eded71bc71a85120"

      def install
        bin.install "cru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/binxio/cru/releases/download/2.0.2/cru_2.0.2_linux_arm64.tar.gz"
      sha256 "16818ccf363526379105d0d2bafcd4444f68695683ec76d63ca138e8d594a5f0"

      def install
        bin.install "cru"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/binxio/cru/releases/download/2.0.2/cru_2.0.2_linux_amd64.tar.gz"
      sha256 "c15d56cf68f89917879fbea57e0a21a74f4553d61ffc7c32b21be44ddfe49925"

      def install
        bin.install "cru"
      end
    end
  end

  test do
    system "#{bin}/cru --help"
  end
end
