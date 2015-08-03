" Set up Vundle
" set nocompatible
" filetype off
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" Plugin 'gmarik/Vundle.vim'
" Plugin 'bronson/vim-trailing-whitespace'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'airblade/vim-gitgutter'
" Plugin 'kien/ctrlp.vim'

" call vundle#end()

" Enable syntax highlightingn
syntax enable

" Better block indenting
vnoremap > >gv
vnoremap < <gv

" Line numbering
set number
set numberwidth=5

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
set nowritebackup
set noswapfile

"Automatically reload the file when it is changed
set autoread

" Key mapping
" Map ctrl-p to ctrl-a
inoremap <C-a> <C-P>

" Fix backspace
set backspace=2

" Filetype plugins
filetype plugin on
filetype indent on

" Fix screen color
set term=screen-256color
