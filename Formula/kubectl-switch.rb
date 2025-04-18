# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KubectlSwitch < Formula
  desc "A simple tool to switch between Kubernetes contexts."
  homepage "https://github.com/mirceanton/kubectl-switch"
  version "2.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mirceanton/kubectl-switch/releases/download/v2.2.2/kubectl-switch_darwin_amd64.tar.gz"
      sha256 "8c9492587a04037fee7f60e7b20f9433e51d326073c91e791de1d8f93884c338"

      def install
        bin.install "kubectl-switch"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mirceanton/kubectl-switch/releases/download/v2.2.2/kubectl-switch_darwin_arm64.tar.gz"
      sha256 "b333086eb7c95077a3643313a91b0b09de90c480bc4273735fdfeb4b756cde23"

      def install
        bin.install "kubectl-switch"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mirceanton/kubectl-switch/releases/download/v2.2.2/kubectl-switch_linux_amd64.tar.gz"
        sha256 "edc67da3d0657122cafd6d7290addce323d6fda5949ad184baf20127c13d444d"

        def install
          bin.install "kubectl-switch"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mirceanton/kubectl-switch/releases/download/v2.2.2/kubectl-switch_linux_arm64.tar.gz"
        sha256 "463b2a5335f1361ebbdc0193eda1cca50997acdb786ace629a174ccbf7a37700"

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
