set nocompatible
syntax enable
filetype plugin on
set relativenumber number
set incsearch
set omnifunc=syntaxcomplete#Complete

set encoding=utf-8
set path+=**
set wildmenu
set showcmd

set mouse=a
set nowrap

set tabstop=4
set shiftwidth=4
set smarttab
set cindent

"MAPS
let mapleader = ","
let maplocalleader = " "

inoremap {<CR> {<CR>}<ESC>O

nnoremap ; :

nmap <F8> :TagbarToggle<CR>

"AUTOCMD
autocmd InsertEnter,InsertLeave * set cul!

"SNIPPETS
nnoremap <leader>cpp :-1read ~/.vim/.skeleton.cpp<CR>6jl

"PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ludovicchabant/vim-gutentags'

"SYNTAX
Plug 'kmyk/brainfuck-highlight.vim'
Plug 'cespare/vim-toml'
Plug 'justinmk/vim-syntax-extra'

"tpope plugins
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

"COLORSCHEMES
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'

"POWERLINE
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'bling/vim-bufferline'

"ORGMODE
Plug 'jceb/vim-orgmode'
Plug 'vim-scripts/SyntaxRange'
Plug 'majutsushi/tagbar'
Plug 'mattn/calendar-vim'
Plug 'vim-scripts/NrrwRgn'

call plug#end()

"COLORS
" colorscheme PaperColor
" let g:airline_theme='papercolor'
" set bg=light
colorscheme gruvbox
let g:airline_theme='badwolf'
set bg=dark
hi Normal ctermbg=NONE

"VARS
let $PAGER=''
let g:airline_powerline_fonts = 1

command! MakeTags !ctags -R
