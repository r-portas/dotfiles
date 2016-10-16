#!/usr/bin/env bash

# Run this script within the dotfiles folder
# e.g. `bash setup.sh`

# Setup Simlinks
ln -siv `pwd`/vim/vimrc ~/.vimrc
ln -siv `pwd`/bash/bash_profile ~/.bash_profile

# Pull submodules
git submodule init
git submodule update
