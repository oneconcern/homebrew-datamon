# This file was generated by GoReleaser. DO NOT EDIT.
class Datamon < Formula
  desc "A datascience tool to work with data at rest"
  homepage "https://github.com/oneconcern/datamon"
  version "2.2.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/oneconcern/datamon/releases/download/v2.2.2/datamon_2.2.2_darwin_amd64.tar.gz"
    sha256 "c8faad77abe068cb026a87ba5343e823511b2bb9e3d1fbf3c98944636d54d773"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/oneconcern/datamon/releases/download/v2.2.2/datamon_2.2.2_linux_amd64.tar.gz"
      sha256 "59bd8a27ccded658732ee45bf9c845fee73545800d16ccc611af56fa13bd626e"
    end
  end

  def install
    bin.install "datamon2"
  end

  test do
    system "#{bin}/datamon2", "version"
  end
end
