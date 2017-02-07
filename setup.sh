#!/usr/bin/env bash

# Run this script within the dotfiles folder
# e.g. `bash setup.sh`

# Setup Simlinks
ln -siv `pwd`/vim/vimrc ~/.vimrc
ln -siv `pwd`/bash/bash_profile ~/.bash_profile
ln -siv `pwd`/git/gitconfig ~/.gitconfig

# Load extra bash profiles for OS
case "$OSTYPE" in
    solaris*)
        ;;
    darwin*)
        # Clone the terminal colors
        git clone https://github.com/vbwx/base16-terminal-app.git ~/base16-terminal
        ;;
    linux*)
        ;;
    msys*)
        # Clone mintty base16 colors
        git clone https://github.com/iamthad/base16-mintty.git ~/base16-mintty
        ;;
esac
