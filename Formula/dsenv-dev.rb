class DsenvDev < Formula
  version "0.1.4"
  desc "DSenv - dev tools"
  homepage "https://github.com/danielskowronski/homebrew-dsenv"
  url "https://github.com/danielskowronski/bundles-dsenv/releases/download/v0.1.4/dsenv-dev.tgz"
  sha256 "277d99816eacf47278faee261d6c929bcb9103a69fbf3dbad829e61126e3d028"

  depends_on :macos => :ventura

  def install
    bin.install "dsenv-dev-install.sh"
    share.install "dsenv-dev-Preferences.sublime-settings"
    share.install "dsenv-dev-Package Control.sublime-settings"
    share.install "dsenv-dev-bh_core.sublime-settings"
  end

end