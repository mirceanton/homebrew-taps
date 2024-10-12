# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Talswitcher < Formula
  desc "A simple tool to help manage multiple talosconfig files."
  homepage "https://github.com/mirceanton/talswitcher"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mirceanton/talswitcher/releases/download/v1.1.2/talswitcher_darwin_amd64.tar.gz"
      sha256 "fe0d73278ed7dbf94c2b4b3a26c1dc439dcbb16ce2cc9fcd045023eb0ef5445e"

      def install
        bin.install "talswitcher"
      end
    end
    on_arm do
      url "https://github.com/mirceanton/talswitcher/releases/download/v1.1.2/talswitcher_darwin_arm64.tar.gz"
      sha256 "3d02a2c9803ced00f784bbe3c76fc1eee0a225c979c2e26c74546b549928466a"

      def install
        bin.install "talswitcher"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mirceanton/talswitcher/releases/download/v1.1.2/talswitcher_linux_amd64.tar.gz"
        sha256 "d880317ddea91d6559df8ef35e9e1bb3763c2cc50bfa971b63fa127bf82ca73d"

        def install
          bin.install "talswitcher"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mirceanton/talswitcher/releases/download/v1.1.2/talswitcher_linux_arm64.tar.gz"
        sha256 "4c5c07b8f7ab7f8fd4a61c8c7a08ba46a46df1e5710235139b516f9ac907782b"

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
