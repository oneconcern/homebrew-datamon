# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Datamon < Formula
  desc "A datascience tool to work with data at rest"
  homepage "https://github.com/oneconcern/datamon"
  version "2.5.0"

  on_macos do
    url "https://github.com/oneconcern/datamon/releases/download/v2.5.0/datamon_2.5.0_darwin_amd64.tar.gz"
    sha256 "23c66bd631a4de3e10d5cb51af00bab7b3ba36866c937cf212b9b482dbed4760"

    def install
      bin.install "datamon2"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Datamon
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oneconcern/datamon/releases/download/v2.5.0/datamon_2.5.0_linux_amd64.tar.gz"
      sha256 "a14e02adb1cf73a88ca15805a15304f3149128d4dc46d07b61a4e522dc01ca51"

      def install
        bin.install "datamon2"
      end
    end
  end

  test do
    system "#{bin}/datamon2", "version"
  end
end
