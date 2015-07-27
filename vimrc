" Editor configuration
syntax enable

" Better block indenting
vnoremap > >gv
vnoremap < <gv

" Line numbering
set number

"Allow mouse input
set mouse=a

" 1 tab == 4 spaces
set tabstop=4
set shiftwidth=4

" Autoindent stuff
set autoindent

" Always show the current position
set ruler

" Ignore case when searching
set ignorecase

" Highlight matching brackets
set showmatch

" Disable backups
set nobackup

"Automatically reload the file when it is changed
set autoread

" Filetype plugins
filetype plugin on
filetype indent on
