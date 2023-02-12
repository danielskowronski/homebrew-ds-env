cask "dsenv-common" do
  version "0.1.3"
  sha256 "e6d86ef2503e886356d2abaefea271728285311ddfc20cc423b589af203915fa"
  url "https://github.com/danielskowronski/bundles-dsenv/releases/download/v0.1.3/dsenv-common.tgz"
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
