class DsenvCli < Formula
  version "0.0.10"
  desc "DSenv - CLI tools"
  homepage "https://github.com/danielskowronski/homebrew-ds-env"
  url "https://github.com/danielskowronski/dsenv/releases/download/v0.0.10/dsenv-cli.tgz"
  sha256 "a7c960ad0c4c125879320be229c72215dedaab76a82cd87ff8b160be59ae7140"

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