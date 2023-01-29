cask "dsenv-mac" do
  version "0.0.10"
  sha256 "55b5a277a250407cad293f5a5e4678e06be8df9c601d4856f48d6158a1580bb8"
  url "https://github.com/danielskowronski/dsenv/releases/download/v0.0.10/dsenv-mac.tgz"
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
   
  artifact "mac/dsenv-mac-Mosaic.mosaicprefs", target: "#{Dir.home}/Documents/dsenv/mac/Mosaic.mosaicprefs"
  artifact "mac/dsenv-mac-com.googlecode.iterm2.plist", target: "#{Dir.home}/Documents/dsenv/mac/com.googlecode.iterm2.plist"
  artifact "mac/dsenv-mac-iStatMenusSettings.ismp", target: "#{Dir.home}/Documents/dsenv/mac/iStatMenusSettings.ismp"
  artifact "mac/dsenv-mac-iStatMenusSettings_MacBook.ismp", target: "#{Dir.home}/Documents/dsenv/mac/iStatMenusSettings_MacBook.ismp"

  caveats "Configure installed softare by importing relevant files from #{Dir.home}/Documents/dsenv/mac/"
end