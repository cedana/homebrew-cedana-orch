# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/custom_download_strategy"
class CedanaOrch < Formula
  desc ""
  homepage "cedana.ai"
  version "0.8.4"

  on_macos do
    url "https://github.com/cedana/cedana-orch/releases/download/v0.8.4/cedana-orch_0.8.4_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "a6075b311684bc5178e6240f6bf59be06f2a4fdfdb582fe2287c29dc573c1576"

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
      url "https://github.com/cedana/cedana-orch/releases/download/v0.8.4/cedana-orch_0.8.4_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "53ec75c3c159904bc2fdb0f002a28652c326e86bfa6bf19b9c4266fcc5c882f4"

      def install
        bin.install "cedana-orch"
      end
    end
  end
end
