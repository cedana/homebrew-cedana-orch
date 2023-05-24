# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/custom_download_strategy"
class CedanaOrch < Formula
  desc ""
  homepage "cedana.ai"
  version "0.4.95"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cedana/cedana-orch/releases/download/v0.4.95/cedana-orch_0.4.95_darwin_amd64.tar.gz", using: GithubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b91608c6d3f288fe57bee6cf8140a898c4d1667c1657b290118ec44c4225d169"

      def install
        bin.install "cedana-orch"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cedana/cedana-orch/releases/download/v0.4.95/cedana-orch_0.4.95_darwin_arm64.tar.gz", using: GithubPrivateRepositoryReleaseDownloadStrategy
      sha256 "17697d181cdc5769a230eb56e586f2a57b89cc3d98109ce0b93dd9509c43fc99"

      def install
        bin.install "cedana-orch"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cedana/cedana-orch/releases/download/v0.4.95/cedana-orch_0.4.95_linux_arm64.tar.gz", using: GithubPrivateRepositoryReleaseDownloadStrategy
      sha256 "363866c0836302fc4b942b2411a57b6429bf9a7953fbec108032b534e4451010"

      def install
        bin.install "cedana-orch"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cedana/cedana-orch/releases/download/v0.4.95/cedana-orch_0.4.95_linux_amd64.tar.gz", using: GithubPrivateRepositoryReleaseDownloadStrategy
      sha256 "188f427840b6dcafeca2c90959f1410b1013a5d05e1b66a4fa0027b7904ea29c"

      def install
        bin.install "cedana-orch"
      end
    end
  end
end
