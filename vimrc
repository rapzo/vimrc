" My vim coiso

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" Vundle manager
Bundle 'gmarik/vundle'

" Behavior related bundles
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'

" Tools related bundles
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'othree/html5.vim'
Bundle 'leshill/vim-json'

" Others
Bundle 'altercation/vim-colors-solarized'
Bundle 'skammer/vim-css-color'
Bundle 'mgutz/vim-colors'
Bundle 'bling/vim-airline'

filetype plugin indent on


" Config madness
let mapleader = ","
let g:mapleader = ","

" Save on quit, tab and buffer change
set autowriteall
au FocusLost * silent! :wa
au TabLeave * silent! :wa


" Syntax stuff
syntax enable
set number
set hidden
set backspace=indent,eol,start
set directory=~/.vim/tmp/

set nowrap
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
set history=10000
set undolevels=1000
set title
set visualbell
set noerrorbells
set guifont=Ubuntu\ Mono\ 10

if has("gui_running")
	set guioptions=-t
endif

" set background=dark
" colorscheme solarized

set tabstop=2 " tab is 2 spaces length
set shiftwidth=2 " autoindent with 2 spaces
set softtabstop=2 " same
set expandtab
set shiftround " for < and > indenting
set smarttab
set autoindent
set copyindent

" Spaces highlight
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/


" Syntax specific
" Ruby
autocmd filetype ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 shiftwidth=2 colorcolumn=80

"PHP
autocmd FileType php setlocal colorcolumn=100

" HTML
autocmd filetype html setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 shiftwidth=2 colorcolumn=80

"JS
au BufNew,BufReadPost *.js setlocal shiftwidth=2 expandtab


" Misc
" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
