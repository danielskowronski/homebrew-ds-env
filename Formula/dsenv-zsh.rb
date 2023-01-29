class DsenvZsh < Formula
  version "0.0.10"
  desc "DSenv - zsh"
  homepage "https://github.com/danielskowronski/homebrew-ds-env"
  url "https://github.com/danielskowronski/dsenv/releases/download/v0.0.10/dsenv-zsh.tgz"
  sha256 "c8914820878c1b83c7aead235b9aaf12e761ca24baf98d15db166c856c690070"

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