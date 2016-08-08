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
Plugin 'ap/vim-css-color'                           " CSS colouring
Plugin 'airblade/vim-gitgutter'                     " Display git on the gutter
Plugin 'kien/ctrlp.vim'                             " File searching
Plugin 'ervandew/supertab'                          " Autocompletion
Plugin 'itchyny/lightline.vim'                      " Custom statusbar (Requires 256 bit colours)
Plugin 'editorconfig/editorconfig-vim'              " Allows project based vim configurations
Plugin 'kshenoy/vim-signature'                      " Add signatures to display marks
call vundle#end()

set background=dark

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

" Send more characters
set ttyfast

" Set title to filename
set title

" Define how split works
set splitbelow
set splitright

" Disable intro message
set shortmess=atI

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
