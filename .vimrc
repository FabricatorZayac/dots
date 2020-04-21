set nocompatible
syntax enable
filetype plugin on
set relativenumber number
set incsearch

set encoding=utf-8
set path+=**
set wildmenu
set showcmd

set mouse=a
set nowrap

set tabstop=4
set shiftwidth=4
set smarttab
set cin

"MAPS
let mapleader = ","
let maplocalleader = " "

inoremap {<CR> {<CR>}<ESC>O

nnoremap ; :
"nnoremap : ;

nmap <F8> :TagbarToggle<CR>

"SNIPPETS
nnoremap <leader>cpp :-1read ~/.vim/.skeleton.cpp<CR>6jl
nnoremap <leader>pybt :-1read ~/.vim/.pybot.py<CR>10jf(

"PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
" Plug 'xavierd/clang_complete'
Plug 'justmao945/vim-clang'
Plug 'davidhalter/jedi-vim'
Plug 'kmyk/brainfuck-highlight.vim'

Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

"Plug 'AlessandroYorba/Alduin'
Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'bling/vim-bufferline'

Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/SyntaxRange'
Plug 'majutsushi/tagbar'
Plug 'mattn/calendar-vim'
Plug 'vim-scripts/NrrwRgn'

call plug#end()

"COLORS
colorscheme gruvbox
set bg=dark
hi Normal ctermbg=NONE

"VARS
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'

command! MakeTags !ctags -R
