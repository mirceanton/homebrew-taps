# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KubectlSwitch < Formula
  desc "A simple tool to switch between Kubernetes contexts."
  homepage "https://github.com/mirceanton/kubectl-switch"
  version "2.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mirceanton/kubectl-switch/releases/download/v2.0.3/kubectl-switch_darwin_amd64.tar.gz"
      sha256 "5a1642320536fbad73c712ca5c739d75276772066adb13f80197a1459eb02574"

      def install
        bin.install "kubectl-switch"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mirceanton/kubectl-switch/releases/download/v2.0.3/kubectl-switch_darwin_arm64.tar.gz"
      sha256 "67882e0ee2c472f7454ffb2e4e78ed0c2cac9d6485fbab2cdcf1b5b1b412eccc"

      def install
        bin.install "kubectl-switch"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mirceanton/kubectl-switch/releases/download/v2.0.3/kubectl-switch_linux_amd64.tar.gz"
        sha256 "2a5d48c66e800b1137f1de81be7d8948f02c25952042813011986bf8daa4ba4c"

        def install
          bin.install "kubectl-switch"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mirceanton/kubectl-switch/releases/download/v2.0.3/kubectl-switch_linux_arm64.tar.gz"
        sha256 "348a42980dc193f336283c648d5a7a6b2da4d57892c27216580e97d896290c1c"

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
