class DsenvZsh < Formula
  version "0.1.4"
  desc "DSenv - zsh"
  homepage "https://github.com/danielskowronski/homebrew-dsenv"
  url "https://github.com/danielskowronski/bundles-dsenv/releases/download/v0.1.4/dsenv-zsh.tgz"
  sha256 "7e25694415b7803c469ec8d2ad6a0f2b1681068cae3ba7d0a14a4f8860623876"

  depends_on :macos => :ventura

  depends_on "zsh"
  depends_on "zsh-autosuggestions"
  depends_on "zsh-completions"
  depends_on "zsh-syntax-highlighting"
  depends_on "zsh-git-prompt"
  depends_on "fzf"
  depends_on "zplug"
  depends_on "romkatv/powerlevel10k/powerlevel10k"

  def install
    bin.install "dsenv-zsh-install.sh"
    share.install "dsenv-zsh-zshrc"
  end

end