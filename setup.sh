# Run this script within the dotfiles folder
# e.g. `bash setup.sh`

# Setup Simlinks
ln -s `pwd`/vimrc ~/.vimrc
rm ~/.bash_profile
ln -s `pwd`/bash_profile ~/.bash_profile
source ~/.bash_profile
ln -s `pwd`/tmux.conf ~/.tmux.conf

# Clone vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Dotfiles setup, run ':PluginInstall' within Vim to setup plugins"
