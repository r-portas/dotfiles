#!/bin/bash

# Update App Store apps
sudo softwareupdate -i -a

# Update Homebrew
brew update
brew upgrade
brew cleanup

# Update npm and packages
npm install -g npm
npm update -g
