# This file was generated by GoReleaser. DO NOT EDIT.
class Datamon < Formula
  desc "A datascience tool to work with data at rest"
  homepage "https://github.com/oneconcern/datamon"
  version "2.0.0-beta"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/oneconcern/datamon/releases/download/v2.0.0-beta/datamon_2.0.0-beta_darwin_amd64.tar.gz"
    sha256 "24ee3210c8823203ec997c1256066b23e88a0bf7e997d2bb28a842f9bac1c44c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/oneconcern/datamon/releases/download/v2.0.0-beta/datamon_2.0.0-beta_linux_amd64.tar.gz"
      sha256 "5144919221f28eaf8cc5a57c97eca86b585bf56d52b2dc049a55e6fd0d336c2b"
    end
  end

  def install
    bin.install "datamon"
  end

  test do
    system "#{bin}/datamon", "version"
  end
end
