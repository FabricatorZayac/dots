set nocompatible
syntax enable
filetype plugin on
set relativenumber number
set incsearch
set omnifunc=syntaxcomplete#Complete
set clipboard=unnamedplus

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

nmap <F8> :TagbarToggle<CR>
nmap <F5> :NERDTreeToggle<CR>

xnoremap nl :s/^\s*\zs/\=(line('.') - line("'<")+1).'. '<CR>

"AUTOCMD
autocmd InsertEnter,InsertLeave * set cul!

"SNIPPETS
nnoremap <leader>cpp :-1read ~/.vim/.skeleton.cpp<CR>4jl
nnoremap !<tab> :-1read ~/.vim/.skeleton.html<CR>7j

"PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}
Plug 'scrooloose/nerdtree'
Plug 'justmao945/vim-clang'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'

"SYNTAX
Plug 'kmyk/brainfuck-highlight.vim'
Plug 'cespare/vim-toml'
Plug 'justinmk/vim-syntax-extra'
Plug 'neovimhaskell/haskell-vim'
Plug 'tikhomirov/vim-glsl'

"tpope plugins
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

"COLORSCHEMES
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'

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
colorscheme gruvbox
set bg=dark
hi Normal ctermbg=NONE
"VARS
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
" let g:instant_markdown_browser = "firefox --new-window"
let g:instant_markdown_browser = "surf"

command! MakeTags !ctags -R
