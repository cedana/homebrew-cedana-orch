# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/custom_download_strategy"
class CedanaOrch < Formula
  desc ""
  homepage "cedana.ai"
  version "0.4.98"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cedana/cedana-orch/releases/download/v0.4.98/cedana-orch_0.4.98_darwin_amd64.tar.gz", using: GithubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0f5b23f08620ba7f0ab41787c80fe3e8cce671c42c3ead98b317e67bb346753f"

      def install
        bin.install "cedana-orch"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cedana/cedana-orch/releases/download/v0.4.98/cedana-orch_0.4.98_darwin_arm64.tar.gz", using: GithubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ba9e71637d55131d384085673ec3b913fd558a44072e13c19f5cff1b36b0969b"

      def install
        bin.install "cedana-orch"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cedana/cedana-orch/releases/download/v0.4.98/cedana-orch_0.4.98_linux_arm64.tar.gz", using: GithubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b10bdc8345f4da8a2bed39af2ecef8f16f8cb77d78607d8e6853aaf316923ea3"

      def install
        bin.install "cedana-orch"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cedana/cedana-orch/releases/download/v0.4.98/cedana-orch_0.4.98_linux_amd64.tar.gz", using: GithubPrivateRepositoryReleaseDownloadStrategy
      sha256 "af5cebb621d13036bc6992a9a0b3ff54da88713fea0b827d61d0f36f8accc714"

      def install
        bin.install "cedana-orch"
      end
    end
  end
end
