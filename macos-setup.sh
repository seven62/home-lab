#!/bin/bash
#set -eux


# Create Profile Directories
mkdir ~/{bin,code,dev}


# Install CLI Tools
clear
echo "############################"
echo "### Installing CLI Tools ###"
echo "############################"
sleep 2

brew install \
  ansible \
  ansible-lint \
  bash \
  bash-completion \
  bat \
  broot \
  git \
  htop \
  jq \
  jsonlint \
  make \
  mkdocs \
  nmap \
  noti \
  packer \
  packer-completion \
  pyenv \
  qemu \
  shellcheck \
  tldr \
  tmux \
  vagrant-completion \
  vifm \
  wireguard-tools \
  yamllint


## Import Dotfiles
# TODO


## Bash Completion (completion)
# Finishing this up by appending to bash profile

cat << EOF >> ~/.bash_profile
# bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
EOF

clear
echo "############################"
echo "### Installing GUI Tools ###"
echo "### password is required ###"
echo "############################"
sleep 2


# Install GUI Tools
brew cask install  \
  alfred \
  appcleaner \
  authy \
  balenaetcher \
  github \
  iterm2 \
  itsycal \
  lulu \
  mark-text \
  notion \
  rectangle \
  skitch \
  slack \
  vagrant \
  vagrant-manager \
  vlc \
  zoom

# Browser
echo "### Installing Browser(s) ###"
brew cask install \
  google-chrome \
  firefox &&


# # Docker - Container Development
# # Untested with Bir Sur NOV2020
# brew cask install docker &&
# brew install docker-compose


# Pass Manager
echo "### Installing Password Manager ###"
brew cask install bitwarden
brew install bitwarden-cli

# brew cask install lastpass
# brew install lastpass-cli


# Text Editor
echo "### Installing Text Editor ###"
brew cask install visual-studio-code
  # atom \
  # sublime-text2 \
  # visual-studio-code
  

# # Hypervisor (free) - 
echo "### Installing Virtualbox ###"
# # Untested with Big Sur NOV2020
# brew cask install virtualbox


# Fonts
echo "### Installing Font(s) ###"
brew tap homebrew/cask-fonts
brew cask install font-fira-code


# SSH Setup
echo "Setting up SSH ###"
mkdir ~/.ssh && touch ~/.ssh/config

cat << EOF >> ~/.ssh/config
Host <SHORTNAME>
  HostName x.x.x.x
  User <USER>
  #Port XXXX
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/<YOUR_KEY>
EOF


# macOS Interface Tweaks
echo "Performing macOS Interface Tweaks ###"

# Show Library folder
chflags nohidden ~/Library

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles true
killall Finder

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Save screenshots to a folder on the desktop
mkdir ~/Desktop/screenshots
defaults write com.apple.screencapture location ~/Desktop/screenshots