set nocompatible
let mapleader=","
filetype off
set history=1000
set rtp+=~/.vim/bundle/neobundle.vim

call plug#begin('~/.config/nvim/plugged')

Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'bronson/vim-trailing-whitespace'
Plug 'editorconfig/editorconfig-vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ray-x/lsp_signature.nvim'
Plug 'ms-jpq/coq_nvim'
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'elzr/vim-json', { 'for': 'json' }

call plug#end()

syntax on

set tabstop=2
set shiftwidth=2
set softtabstop=2
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
let g:tex_flavor = 'latex'
set wildmode=longest,list,full
set wildmenu
set completeopt=menuone,noinsert,noselect

" File association
au BufRead,BufNewFile *.gnuplot setfiletype gnuplot
au BufRead,BufNewFile *.vue setfiletype html

" Moving and editing
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h
imap jk <ESC>
noremap Y y$
nmap <CR> o<Esc>

" File I/O
nmap <silent> <leader>w :update<CR>
nmap <silent> <leader>q :q<CR>

" Pane manipilation
nmap <silent> <leader>+ :exe "resize" . (winheight(0) * 3/2)<CR>
nmap <silent> <leader>- :exe "resize" . (winheight(0) * 2/3)<CR>

" nerdtree
nmap <silent> <leader>n :NERDTreeToggle<CR>

let NERDTreeMapHelp=''
let NERDTreeMapOpenInTab = '<C-T>'
let NERDTreeMapOpenSplit = '<C-S>'
let NERDTreeMapOpenVSplit = '<C-V>'
let NERDTreeIgnore = ['\.git', '\.pyc$']
let NERDTreeShowHidden=1

set wildignore+=node_modules/**

" vim-fugitive
nmap <silent> <leader>gd :Git diff<CR>
nmap <silent> <leader>gb :Git blame<CR>

" vim-commentary
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType conf setlocal commentstring=#\ %s
autocmd FileType cpp setlocal commentstring=//\ %s
autocmd FileType vim setlocal commentstring=\"\ %s
autocmd FileType zsh setlocal commentstring=#\ %s
autocmd FileType cmake setlocal commentstring=#\ %s
autocmd FileType gnuplot setlocal commentstring=#\ %s
autocmd FileType meson setlocal commentstring=#\ %s

