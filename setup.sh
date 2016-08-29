# Run this script within the dotfiles folder
# e.g. `bash setup.sh`

# Setup Simlinks
ln -si `pwd`/vimrc ~/.vimrc
ln -si `pwd`/bash_profile ~/.bash_profile
ln -si `pwd`/tmux.conf ~/.tmux.conf

# Clone vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Dotfiles setup, run ':PluginInstall' within Vim to setup plugins"
