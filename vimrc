""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim configuration
"
" Author: Roy Portas - www.royportas.com
" Version 2.0
""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set up Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'itchyny/lightline.vim'
Plugin 'editorconfig/editorconfig-vim'              " Allows project based vim configurations
Bundle 'altercation/vim-colors-solarized'           " Solarized for gvim
call vundle#end()

" Use the solarized dark theme (NOTE: Requires 256 bit terminal colours)
set background=dark
colorscheme solarized

" Enable syntax highlighting
syntax enable

" Better block indenting
vnoremap > >gv
vnoremap < <gv

" Line numbering
set number
set numberwidth=5

" Allow mouse input
set mouse=a

" Lazy redrawing
set lazyredraw

" 1 tab == 4 spaces
set expandtab
set softtabstop=4
set shiftwidth=4

" Autoindent stuff
set ai
set si
set wrap

" Command line completion
set wildmenu
set showcmd

" Always show the current position
set ruler

" Always show status line
set laststatus=2

" Search configuration
set incsearch
set hlsearch
set ignorecase

" Highlight matching brackets
set showmatch

" Disable backups
set nobackup
set nowritebackup
set noswapfile

" Automatically reload the file when it is changed
set autoread

" Fix backspace
set backspace=2

" Show the current mode
set showmode

" Set paste toggle
set pastetoggle=<F11>

" Filetype plugins
filetype plugin on
filetype indent on

" Set colour column
" set colorcolumn=80

" Setup gvim options
if has("gui_running")
    set guifont=Hack:h10
end

" Lightline configuration
let g:lightline = {
            \ 'colorscheme': 'solarized'
            \ }

" Hide the duplicated data caused by lightline
set noshowmode
