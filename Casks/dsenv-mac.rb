cask "dsenv-mac" do
  version "0.1.0"
  sha256 "5ec380c1122e173ce53d0b91ba7c5e1a38e390c24cc5890823bed1ad0b904a2a"
  url "https://github.com/danielskowronski/bundles-dsenv/releases/download/v0.1.0/dsenv-mac.tgz"
  name "DSenv - macOS GUI"
  desc "DSenv - macOS GUI"
  homepage "https://github.com/danielskowronski/homebrew-ds-env"

  depends_on macos: ">= :ventura"

  depends_on cask: "macupdater"
  depends_on cask: "macdown"
  depends_on cask: "homebrew/cask-drivers/logitech-g-hub"
  # depends_on cask: "setapp"
  depends_on cask: "temurin"
  depends_on cask: "gpg-suite"
  depends_on cask: "vlc"
  depends_on cask: "xscreensaver"
  depends_on cask: "tiles"
  depends_on cask: "appcleaner"
  depends_on cask: "apache-directory-studio"
  depends_on cask: "multipass"
  depends_on cask: "sublime-text"
  depends_on cask: "wireshark"
  depends_on cask: "obsidian"
   
  artifact "mac/dsenv-mac-Mosaic.mosaicprefs", target: "#{Dir.home}/dsenv/mac/Mosaic.mosaicprefs"
  artifact "mac/dsenv-mac-com.googlecode.iterm2.plist", target: "#{Dir.home}/dsenv/mac/com.googlecode.iterm2.plist"
  artifact "mac/dsenv-mac-iStatMenusSettings.ismp", target: "#{Dir.home}/dsenv/mac/iStatMenusSettings.ismp"
  artifact "mac/dsenv-mac-iStatMenusSettings_MacBook.ismp", target: "#{Dir.home}/dsenv/mac/iStatMenusSettings_MacBook.ismp"

  caveats "Configure installed softare by importing relevant files from #{Dir.home}/dsenv/mac/"
end