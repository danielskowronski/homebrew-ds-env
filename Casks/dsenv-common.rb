cask "dsenv-common" do
  version "0.0.10"
  sha256 "ce59575fbfdcda58c1d60f17f28f0f22a0bf1a6a1f4eff1a3c1ed2c3b7cc711c"
  url "https://github.com/danielskowronski/dsenv/releases/download/v0.0.10/dsenv-common.tgz"
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
