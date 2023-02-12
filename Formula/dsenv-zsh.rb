class DsenvZsh < Formula
  version "0.1.3"
  desc "DSenv - zsh"
  homepage "https://github.com/danielskowronski/homebrew-dsenv"
  url "https://github.com/danielskowronski/bundles-dsenv/releases/download/v0.1.3/dsenv-zsh.tgz"
  sha256 "21f7be4c07fd96e467401d77c08c3459271e83a20d2676fdf6828c8caecf2db0"

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