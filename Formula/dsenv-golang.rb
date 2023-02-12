class DsenvGolang < Formula
  version "0.1.0"
  desc "DSenv - golang"
  homepage "https://github.com/danielskowronski/homebrew-dsenv"
  url "https://raw.githubusercontent.com/danielskowronski/bundles-dsenv/master/dummy.txt"
  sha256 "b5a2c96250612366ea272ffac6d9744aaf4b45aacd96aa7cfcb931ee3b558259"

  depends_on :macos => :ventura

  depends_on "go"
  depends_on "go-critic"
  depends_on "gofumpt"
  depends_on "gosec"
  depends_on "staticcheck"

  def install
    pkgshare.install "dummy.txt"
  end

end