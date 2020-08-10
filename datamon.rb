# This file was generated by GoReleaser. DO NOT EDIT.
class Datamon < Formula
  desc "A datascience tool to work with data at rest"
  homepage "https://github.com/oneconcern/datamon"
  version "2.2.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/oneconcern/datamon/releases/download/v2.2.1/datamon_2.2.1_darwin_amd64.tar.gz"
    sha256 "8583f30ca53526d68fb6829ca9c2b3876ac8332c3a0123daaf6bc74db3dec4f6"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/oneconcern/datamon/releases/download/v2.2.1/datamon_2.2.1_linux_amd64.tar.gz"
      sha256 "b8be225abf1a81729e50572cee0d699d7fa758caf1c462a702423b21bb862347"
    end
  end

  def install
    bin.install "datamon2"
  end

  test do
    system "#{bin}/datamon2", "version"
  end
end
