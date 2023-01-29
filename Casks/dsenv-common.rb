cask "dsenv-common" do
  version "0.1.0"
  sha256 "2b66e141262c49229352ba2c390c7f3a566db87fb9487777cb24320cdb5ef271"
  url "https://github.com/danielskowronski/bundles-dsenv/releases/download/v0.1.0/dsenv-common.tgz"
  name "DSenv - common"
  desc "DSenv - common"
  homepage "https://github.com/danielskowronski/homebrew-ds-env"

  depends_on macos: ">= :ventura"

  depends_on formula: "danielskowronski/dsenv/dsenv-cli"
  depends_on formula: "danielskowronski/dsenv/dsenv-cloud"
  depends_on formula: "danielskowronski/dsenv/dsenv-dev"
  depends_on formula: "danielskowronski/dsenv/dsenv-golang"
  depends_on formula: "danielskowronski/dsenv/dsenv-zsh"
  depends_on cask: "danielskowronski/dsenv/dsenv-mac"
   
  artifact "common/dsenv-common-install.sh", target: "#{Dir.home}/dsenv/common-install.sh"

  caveats "Install default configs using #{Dir.home}/dsenv/common-install.sh"
end
