class DsenvCloud < Formula
  version "0.0.6"
  desc "DSenv - zsh"
  homepage "https://github.com/danielskowronski/homebrew-ds-env"
  url "https://raw.githubusercontent.com/danielskowronski/dsenv/master/dummy.txt"
  sha256 "b5a2c96250612366ea272ffac6d9744aaf4b45aacd96aa7cfcb931ee3b558259"

  depends_on :macos => :ventura

  depends_on "docker"
  depends_on "hadolint"
  depends_on "kubectl"
  depends_on "awscli"
  depends_on "terraform"
  depends_on "terragrunt"
  depends_on "tfenv"
  depends_on "ubuntu/microk8s/microk8s"
  # depends_on cask: "multipass"

  def install
    pkgshare.install "dummy.txt"
  end

end