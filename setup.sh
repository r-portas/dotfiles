#!/usr/bin/env bash

# Run this script within the dotfiles folder
# e.g. `bash setup.sh`

# Setup Simlinks
ln -siv `pwd`/vimrc ~/.vimrc
ln -siv `pwd`/bash_profile ~/.bash_profile
ln -siv `pwd`/tmux.conf ~/.tmux.conf

# Clone vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Dotfiles setup, run ':PluginInstall' within Vim to setup plugins"
