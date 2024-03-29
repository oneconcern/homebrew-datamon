# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Datamon < Formula
  desc "A datascience tool to work with data at rest"
  homepage "https://github.com/oneconcern/datamon"
  version "2.6.9"

  on_macos do
    url "https://github.com/oneconcern/datamon/releases/download/v2.6.9/datamon_2.6.9_darwin_amd64.tar.gz"
    sha256 "437ab4219709dbe10d9c63ff279ecc8b9d4059e17c8d3e74fc142d51e8a39dc8"

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
      url "https://github.com/oneconcern/datamon/releases/download/v2.6.9/datamon_2.6.9_linux_amd64.tar.gz"
      sha256 "ede0ed7976bc6b1530a9817df935f78aab2cc1763bc0eb520eaa965fc341e50f"

      def install
        bin.install "datamon2"
      end
    end
  end

  test do
    system "#{bin}/datamon2", "version"
  end
end
