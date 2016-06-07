class Devicefarm < Formula
  desc "devicefarm CLI for using AWS Device Farm"
  homepage "https://github.com/ride/devicefarm"
  url "https://github.com/ride/devicefarm/releases/download/v1.1.1/devicefarm_darwin_amd64"
  version "1.1.1"
  sha256 "f50ae42f3e0938bc4f9badbf26bbc6a638e8e2a84e8a78c0ef66cc18c3e09099"

  def install
    system "mv", "devicefarm_darwin_amd64", "devicefarm"
    bin.install "devicefarm"
  end

  test do
    system "#{bin}/devicefarm", "--version"
  end
end
