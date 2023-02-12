class DsenvDev < Formula
  version "0.1.3"
  desc "DSenv - dev tools"
  homepage "https://github.com/danielskowronski/homebrew-dsenv"
  url "https://github.com/danielskowronski/bundles-dsenv/releases/download/v0.1.3/dsenv-dev.tgz"
  sha256 "7d6d0630799e6920922d6556ab368b7b382c4ee4c896ade424a5c1be70b7f774"

  depends_on :macos => :ventura

  def install
    bin.install "dsenv-dev-install.sh"
    share.install "dsenv-dev-Preferences.sublime-settings"
    share.install "dsenv-dev-Package Control.sublime-settings"
    share.install "dsenv-dev-bh_core.sublime-settings"
  end

end