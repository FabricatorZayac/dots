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
inoremap {<CR> {<CR>}<ESC>O


nnoremap ; :
"nnoremap : ;


"SNIPPETS
nnoremap ,cpp :-1read ~/.vim/.skeleton.cpp<CR>6jl
nnoremap ,pybt :-1read ~/.vim/.pybot.py<CR>10jf(a

"PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'davidhalter/jedi-vim'
"Plug 'scrooloose/nerdtree'
Plug 'xavierd/clang_complete'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'edkolev/tmuxline.vim'

"Plug 'AlessandroYorba/Alduin'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'

call plug#end()

"COLORS
colorscheme gruvbox
set bg=dark
hi Normal ctermbg=NONE

"VARS
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'

command! MakeTags !ctags -R
