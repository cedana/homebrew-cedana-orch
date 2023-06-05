# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/custom_download_strategy"
class CedanaOrch < Formula
  desc ""
  homepage "cedana.ai"
  version "0.8.6"

  on_macos do
    url "https://github.com/cedana/cedana-orch/releases/download/v0.8.6/cedana-orch_0.8.6_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "5d697a34ccf015f19e5ddcce64ab90f3e959fd1ba858cdca8a9742112a5ced3f"

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
      url "https://github.com/cedana/cedana-orch/releases/download/v0.8.6/cedana-orch_0.8.6_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2762c68a234ce05ee26c324901dcb2a2e0480b74ccab19afc42d4ef7f14bf482"

      def install
        bin.install "cedana-orch"
      end
    end
  end
end
