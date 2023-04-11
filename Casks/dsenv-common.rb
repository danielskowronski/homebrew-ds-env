cask "dsenv-common" do
  version "0.1.4"
  sha256 "7112761ee49bbc8aa1323219051c210aad191863f56d1886eec290b4a1c71feb"
  url "https://github.com/danielskowronski/bundles-dsenv/releases/download/v0.1.4/dsenv-common.tgz"
  name "DSenv - common"
  desc "DSenv - common"
  homepage "https://github.com/danielskowronski/homebrew-dsenv"

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
