# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Talswitcher < Formula
  desc "A simple tool to help manage multiple talosconfig files."
  homepage "https://github.com/mirceanton/talswitcher"
  version "1.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mirceanton/talswitcher/releases/download/v1.1.8/talswitcher_darwin_amd64.tar.gz"
      sha256 "82c3886665931f1a1a052628ca59390f7536fc48e7519b588045acd92b96196c"

      def install
        bin.install "talswitcher"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mirceanton/talswitcher/releases/download/v1.1.8/talswitcher_darwin_arm64.tar.gz"
      sha256 "112add32a01000f03610c455384f7246e59919ee3c449e8c42d20f61d9f25c0f"

      def install
        bin.install "talswitcher"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mirceanton/talswitcher/releases/download/v1.1.8/talswitcher_linux_amd64.tar.gz"
        sha256 "56a58f4f35381be1da7e2e93bc1d99891db144921c134dd40afadce9e634ba76"

        def install
          bin.install "talswitcher"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mirceanton/talswitcher/releases/download/v1.1.8/talswitcher_linux_arm64.tar.gz"
        sha256 "ce47806a513d3f916f4444240c5461794cd03f40dc38243cf639013dcfc08a41"

        def install
          bin.install "talswitcher"
        end
      end
    end
  end

  test do
    system "#{bin}/talswitcher", "--help"
  end
end
