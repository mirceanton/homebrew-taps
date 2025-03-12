# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Talswitcher < Formula
  desc "A simple tool to help manage multiple talosconfig files."
  homepage "https://github.com/mirceanton/talswitcher"
  version "2.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mirceanton/talswitcher/releases/download/v2.0.1/talswitcher_darwin_amd64.tar.gz"
      sha256 "7edfc0fdb9d7489543ee023e0e4760c68bcd86afd2a3051234304ee086c09469"

      def install
        bin.install "talswitcher"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mirceanton/talswitcher/releases/download/v2.0.1/talswitcher_darwin_arm64.tar.gz"
      sha256 "cb030c1eb90e71d4bd8b795eecbcdc236c99d17cb1e7fee65c5c675297ad2288"

      def install
        bin.install "talswitcher"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mirceanton/talswitcher/releases/download/v2.0.1/talswitcher_linux_amd64.tar.gz"
        sha256 "7083b481c886f08b0598d758797e6311d5d6b64ad6b4981990d12e64c94ca2ba"

        def install
          bin.install "talswitcher"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mirceanton/talswitcher/releases/download/v2.0.1/talswitcher_linux_arm64.tar.gz"
        sha256 "aea7f2ba12f6c5fef1ef9d3120f53376c787c7089f9bd3709d6770ea73ed14c6"

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
