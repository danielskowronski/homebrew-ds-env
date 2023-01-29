class DsenvCli < Formula
  version "0.1.0"
  desc "DSenv - CLI tools"
  homepage "https://github.com/danielskowronski/homebrew-ds-env"
  url "https://github.com/danielskowronski/bundles-dsenv/releases/download/v0.1.0/dsenv-cli.tgz"
  sha256 "a177526b2756571ec352c5e6f8aaa2f1b0e42a02b2bea8eac1249d6992f15732"

  depends_on :macos => :ventura

  depends_on "mc"
  depends_on "htop"
  depends_on "htop"
  depends_on "ncdu"
  depends_on "watch"
  depends_on "coreutils"
  depends_on "gnu-sed"
  depends_on "jq"
  depends_on "yq"
  depends_on "ipcalc"
  depends_on "pre-commit"
  depends_on "pwgen"
  depends_on "tree"
  depends_on "wget"
  depends_on "yamllint"
  depends_on "pyenv"
  depends_on "postgresql@14"
  depends_on "gnupg"
  depends_on "kopia/kopia/kopia"
  depends_on "pinentry-mac"
  depends_on "terminal-notifier"
  depends_on "duti"

  def install
    bin.install "dsenv-cli-install.sh"
    share.install "dsenv-cli-mc.ini"
    share.install "dsenv-cli-htoprc"
  end

end