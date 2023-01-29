class DsenvZsh < Formula
  version "0.1.0"
  desc "DSenv - zsh"
  homepage "https://github.com/danielskowronski/homebrew-ds-env"
  url "https://github.com/danielskowronski/bundles-dsenv/releases/download/v0.1.0/dsenv-zsh.tgz"
  sha256 "bf37b4c201b562c05430be8d81fd3a7826c1d1ab8ea773caadd12362a13262c0"

  depends_on :macos => :ventura

  depends_on "zsh"
  depends_on "zsh-autosuggestions"
  depends_on "zsh-completions"
  depends_on "zsh-syntax-highlighting"
  depends_on "zsh-git-prompt"
  depends_on "fzf"

  def install
    bin.install "dsenv-zsh-install.sh"
    share.install "dsenv-zsh-zshrc"
  end

end