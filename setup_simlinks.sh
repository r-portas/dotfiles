# Run this script within the user's home directory
# For example 'sh dotfiles/setup_simlinks.sh'

ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/bashrc ~/.bashrc
ln -s `pwd`/tmux.conf ~/.tmux.conf

# Clone vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Dotfiles setup, run ':PluginInstall' within Vim to setup plugins"
