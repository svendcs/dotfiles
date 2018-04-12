set nocompatible
let mapleader=","
filetype off
set history=1000
set rtp+=~/.vim/bundle/neobundle.vim

call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'bronson/vim-trailing-whitespace'

Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'lervag/vimtex', { 'for': 'tex' }

call plug#end()

syntax on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround
set autoindent
set smartindent
set noswapfile
set autoread
set number
set relativenumber
set textwidth=0
set wrapmargin=0
set scrolloff=5
set ignorecase " Required for smartcase
set smartcase
set incsearch
set nohlsearch
set conceallevel=0
let g:vim_json_syntax_conceal=0

au BufRead,BufNewFile *.gnuplot setfiletype gnuplot

" Moving
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

map <silent> <leader>n :NERDTreeToggle<CR>
map <silent> <leader>w :update<CR>
map <silent> <leader>s :source ~/.config/nvim/init.vim<CR>
map <silent> <leader>q :q<CR>
map <silent> <leader>gd :Gdiff<CR>
map <silent> <leader>gb :Gblame<CR>
map <silent> <leader>+ :exe "resize" . (winheight(0) * 3/2)<CR>
map <silent> <leader>- :exe "resize" . (winheight(0) * 2/3)<CR>
map <silent> <leader>mw :call MarkWindowSwap()<CR>
map <silent> <leader>pw :call DoWindowSwap()<CR>
nmap <CR> o<Esc>
noremap Y y$

imap jk <ESC>
let NERDTreeMapHelp=''
let NERDTreeMapOpenInTab = '<C-T>'
let NERDTreeMapOpenSplit = '<C-S>'
let NERDTreeMapOpenVSplit = '<C-V>'
let NERDTreeIgnore = ['\.git', '\.pyc$']
let NERDTreeShowHidden=1

set wildignore+=node_modules/**

" Comment strings
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType conf setlocal commentstring=#\ %s
autocmd FileType cpp setlocal commentstring=//\ %s
autocmd FileType vim setlocal commentstring=\"\ %s
autocmd FileType zsh setlocal commentstring=#\ %s
autocmd FileType cmake setlocal commentstring=#\ %s
autocmd FileType gnuplot setlocal commentstring=#\ %s

