class Devicefarm < Formula
  desc "devicefarm CLI for using AWS Device Farm"
  homepage "https://github.com/apeace/devicefarm"
  url "https://github.com/apeace/devicefarm/releases/download/v1.2.0/devicefarm_darwin_amd64"
  version "1.2.0"
  sha256 "c7437671172a2a927418af3e2e41a9bdfb79adec679dc3400e03a54962b0ac6e"

  def install
    system "mv", "devicefarm_darwin_amd64", "devicefarm"
    bin.install "devicefarm"
  end

  test do
    system "#{bin}/devicefarm", "--version"
  end
end
