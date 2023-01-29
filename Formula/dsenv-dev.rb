class DsenvDev < Formula
  version "0.0.10"
  desc "DSenv - dev tools"
  homepage "https://github.com/danielskowronski/homebrew-ds-env"
  url "https://github.com/danielskowronski/dsenv/releases/download/v0.0.10/dsenv-dev.tgz"
  sha256 "d0bd49097ce137dfe3229b6e4341233254b1280b0d869c1f946f8c1da765435c"

  depends_on :macos => :ventura

  def install
    bin.install "dsenv-dev-install.sh"
    share.install "dsenv-dev-Preferences.sublime-settings"
    share.install "dsenv-dev-Package Control.sublime-settings"
    share.install "dsenv-dev-bh_core.sublime-settings"
  end

end