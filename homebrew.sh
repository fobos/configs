#!/usr/bin/env bash

set -e

main() {
  #install_homebrew
  install_brew_packages
}

install_homebrew() {
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

function install_brew_packages() {
  # Install other useful binaries
    brew install git
    brew install git-lfs
    brew install tig
    brew install nvm
    brew install tmux
    brew install midnight-commander
    brew install htop
    brew install fzf
    brew install unrar


    brew install geckodriver
    brew install selenium-server-standalone

  # Cask
    brew cask install flux
    brew cask install caffeine
    brew cask install chromium
    brew cask install firefox
    brew cask install vlc
    brew cask install chromedriver

  # Services
    brew services
 
  # Cleanup
    brew cleanup
    brew cask cleanup
}

main "$@"
