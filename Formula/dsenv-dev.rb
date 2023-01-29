class DsenvDev < Formula
  version "0.1.0"
  desc "DSenv - dev tools"
  homepage "https://github.com/danielskowronski/homebrew-ds-env"
  url "https://github.com/danielskowronski/bundles-dsenv/releases/download/v0.1.0/dsenv-dev.tgz"
  sha256 "a1038193ca1bfb00854eb7b33bf12d37987646a616715ecb2bd663581805ac9f"

  depends_on :macos => :ventura

  def install
    bin.install "dsenv-dev-install.sh"
    share.install "dsenv-dev-Preferences.sublime-settings"
    share.install "dsenv-dev-Package Control.sublime-settings"
    share.install "dsenv-dev-bh_core.sublime-settings"
  end

end