class DsenvCli < Formula
  version "0.1.3"
  desc "DSenv - CLI tools"
  homepage "https://github.com/danielskowronski/homebrew-dsenv"
  url "https://github.com/danielskowronski/bundles-dsenv/releases/download/v0.1.3/dsenv-cli.tgz"
  sha256 "fefc2f2df72376a1937f78e34b46d548593142066d25a28dc449f3f75562a0e5"

  depends_on :macos => :ventura

  depends_on "arping"
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
    share.install "dsenv-cli-gitignore_global"
  end

end