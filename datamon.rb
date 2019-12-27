# This file was generated by GoReleaser. DO NOT EDIT.
class Datamon < Formula
  desc "A datascience tool to work with data at rest"
  homepage "https://github.com/oneconcern/datamon"
  version "2.0.0-beta2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/oneconcern/datamon/releases/download/v2.0.0-beta2/datamon_2.0.0-beta2_darwin_amd64.tar.gz"
    sha256 "3177fafd62a1568b003bfff1ef3479389a23fc3840df27205e395f8f77dcd5f1"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/oneconcern/datamon/releases/download/v2.0.0-beta2/datamon_2.0.0-beta2_linux_amd64.tar.gz"
      sha256 "2ba3cb0a5e278884c2efa5fc37dab3ab9f01781fb4a2e588761340fbd97a8a94"
    end
  end

  def install
    bin.install "datamon"
  end

  test do
    system "#{bin}/datamon", "version"
  end
end
