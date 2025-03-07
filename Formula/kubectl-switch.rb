# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KubectlSwitch < Formula
  desc "A simple tool to switch between Kubernetes contexts."
  homepage "https://github.com/mirceanton/kubectl-switch"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mirceanton/kubectl-switch/releases/download/v2.1.0/kubectl-switch_darwin_amd64.tar.gz"
      sha256 "e29eb11fc42e66e1b46e92747a53f7aa3b8a430264a049e92e010ae47516bb30"

      def install
        bin.install "kubectl-switch"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mirceanton/kubectl-switch/releases/download/v2.1.0/kubectl-switch_darwin_arm64.tar.gz"
      sha256 "88278a19cb5fc7a062e31e44905e0690e16ab40049040c92261d33b38d512918"

      def install
        bin.install "kubectl-switch"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mirceanton/kubectl-switch/releases/download/v2.1.0/kubectl-switch_linux_amd64.tar.gz"
        sha256 "a2d8c19edde4ff8ff6af45fe8d12d3390454f56326ae967f7538a8d585400a57"

        def install
          bin.install "kubectl-switch"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mirceanton/kubectl-switch/releases/download/v2.1.0/kubectl-switch_linux_arm64.tar.gz"
        sha256 "3f275275ca7a1658bdd6b7000d768d040a07f3aad37b3f3f636e97a8f347847a"

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
