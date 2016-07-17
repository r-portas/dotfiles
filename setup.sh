# Run this script within the dotfiles folder
# e.g. `bash setup.sh`

# Setup Simlinks
ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/bash_profile ~/.bash_profile
ln -s `pwd`/tmux.conf ~/.tmux.conf

# Clone vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Clone Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Dotfiles setup, run ':PluginInstall' within Vim to setup plugins"
echo "Run 'prefix + I' within tmux to install plugins"
