# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KubectlSwitch < Formula
  desc "A simple tool to switch between Kubernetes contexts."
  homepage "https://github.com/mirceanton/kubectl-switch"
  version "2.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mirceanton/kubectl-switch/releases/download/v2.2.1/kubectl-switch_darwin_amd64.tar.gz"
      sha256 "3045e7151a5d8704af50556735063c0003ca7d154649dbd049c2b7607c290b2f"

      def install
        bin.install "kubectl-switch"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mirceanton/kubectl-switch/releases/download/v2.2.1/kubectl-switch_darwin_arm64.tar.gz"
      sha256 "8587a9ad868ced31b87f10503a960a085c7c5d706986e3deec688d037cb1ce80"

      def install
        bin.install "kubectl-switch"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mirceanton/kubectl-switch/releases/download/v2.2.1/kubectl-switch_linux_amd64.tar.gz"
        sha256 "04110cd896e5c5ae3d0cb10ba8bab383dfd0da125d8863cdcf2aef54b31fb8c2"

        def install
          bin.install "kubectl-switch"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mirceanton/kubectl-switch/releases/download/v2.2.1/kubectl-switch_linux_arm64.tar.gz"
        sha256 "fd135f8feed85fae7581353383886076a4984726f5eed8145412d7a853d83306"

        def install
          bin.install "kubectl-switch"
        end
      end
    end
  end

  test do
    system "#{bin}/kubectl-switch", "--help"
  end
end
