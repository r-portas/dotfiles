# Run this script within the dotfiles folder
# e.g. `bash setup_similinks.sh`

ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/bash_profile ~/.bash_profile
ln -s `pwd`/tmux.conf ~/.tmux.conf

# Clone vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Dotfiles setup, run ':PluginInstall' within Vim to setup plugins"
