# Removes DOS file endings from dotfiles and vim plugins
# Run within the dotfile directory (i.e. ./fix_file_endings.sh)

# Fix the vim plugins
find ~/.vim/ -type f -exec dos2unix {} \;

# Fix the dotfiles
dos2unix *
