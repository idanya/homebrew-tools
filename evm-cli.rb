# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class EvmCli < Formula
  desc ""
  homepage "https://github.com/idanya/homebrew-tools"
  version "1.0.4"

  on_macos do
    url "https://github.com/idanya/evm-cli/releases/download/v1.0.4/evm-cli_Darwin_x86_64.tar.gz"
    sha256 "1ffbc957a194154ea731120007cb13f94f8e12b5a28dea1c866d02f04dc042d9"

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
      url "https://github.com/idanya/evm-cli/releases/download/v1.0.4/evm-cli_Linux_x86_64.tar.gz"
      sha256 "07e1b48ea5cc51d0adb2d6a7206025c5668292bbd358f500e07a5a095f0d1f4b"

      def install
        bin.install "evm-cli"
      end
    end
  end
end
