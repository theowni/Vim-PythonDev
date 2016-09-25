set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" Keep all Your plugins below that line
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'nvie/vim-flake8'
Plugin 'hdima/python-syntax'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
Plugin 'jiangmiao/auto-pairs'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/indentpython.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Below add Your mappings

nnoremap <C-J> <C-W><C-J>

nnoremap <C-K> <C-W><C-K>

nnoremap <C-L> <C-W><C-L>

nnoremap <C-H> <C-W><C-H>

noremap <C-e> :bprevious<CR>

noremap <C-p> :bnext<CR>

noremap <C-x> :bdelete<CR>

noremap <C-n> :NERDTree<CR>

noremap <C-c> :NERDTreeClose<CR>

noremap <C-w> :w<CR>

noremap <NUL> :q<CR>

" Below add Your customization

set splitbelow
 
set splitright

set number

set hidden

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Below add Your customization for specific plugins
"
"

" hdima/python-syntax
let python_highlight_all = 1

syntax enable

" davidhalter/jedi-vim
autocmd FileType python setlocal completeopt-=preview 

" tpope/vim-fugitive


" vim-airline/vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

set ttimeoutlen=50
let g:airline_theme = 'powerlineish'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

set laststatus=2

let g:airline_symbols.space = "\ua0"

let g:airline_powerline_fonts = 1

" set color scheme
colorscheme Benokai
