# Sets up a new OSX environment

# Setup homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install caskroom
brew tap caskroom/cask

# Common Apps

brew install vim
brew install python3
brew install node

brew cask install google-chrome
brew cask install firefox
brew cask install flux

# System configuration

# Disable chrome swipe navigation
defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool FALSE
