# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/custom_download_strategy"
class CedanaOrch < Formula
  desc ""
  homepage "cedana.ai"
  version "0.8.8"

  on_macos do
    url "https://github.com/cedana/cedana-orch/releases/download/v0.8.8/cedana-orch_0.8.8_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "615ec53ac0dd93bc1676272675f13a7ab390a66e33aed0ddf3fb259e425b6269"

    def install
      bin.install "cedana-orch"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the CedanaOrch
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cedana/cedana-orch/releases/download/v0.8.8/cedana-orch_0.8.8_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ccc8ea2c008490cc4f6166e07c7bb704862c4f28ebe7f4976295d89c4a555450"

      def install
        bin.install "cedana-orch"
      end
    end
  end
end
