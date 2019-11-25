class Datamon < Formula
  desc "A datascience tool to work with data at rest"
  homepage "https://github.com/oneconcern/datamon"
  url "https://github.com/oneconcern/datamon/releases/download/v1.0.0/datamon.mac.tgz"
  version "1.0"
  sha256 "f99844cf4f62034f514c3d06a0d26b97e5e5ac7d26cccf88413e5f0053fc6f06"

  def install
    # nm = "datamon"
    tar xzf datamon.mac.tgz
    #system "mv", "datamon", nm
    bin.install datamon
  end

  test do
    system "#{bin}/datamon", "version"
  end
end
