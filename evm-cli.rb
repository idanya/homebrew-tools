# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class EvmCli < Formula
  desc ""
  homepage "https://github.com/idanya/homebrew-tools"
  version "1.0.6"

  on_macos do
    url "https://github.com/idanya/evm-cli/releases/download/v1.0.6/evm-cli_Darwin_x86_64.tar.gz"
    sha256 "686e5a15d11da07233f4ade73cc24883888b2d8970d80586af66783724673fc2"

    def install
      bin.install "evm-cli"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the EvmCli
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/idanya/evm-cli/releases/download/v1.0.6/evm-cli_Linux_x86_64.tar.gz"
      sha256 "278752e25b6133f8a1f3af80489338572d21f92860ca990ae708fde4075028cb"

      def install
        bin.install "evm-cli"
      end
    end
  end
end
