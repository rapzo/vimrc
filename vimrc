" My vim coiso

set encoding=utf-8
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" Vundle manager
Plugin 'gmarik/Vundle.vim'

" Behavior related bundles
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'

" Tools related bundles
" Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'slim-template/vim-slim.git'

" JavaScript
Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'
Plugin 'hallettj/jslint.vim'
Plugin 'elzr/vim-json'
Plugin 'kien/ctrlp.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'tpope/vim-jdaddy'
Plugin 'kchmck/vim-coffee-script'

" Others
Plugin 'othree/html5.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'ap/vim-css-color'
Plugin 'lervag/vim-latex'


" vim pluggins
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'majutsushi/tagbar'
Plugin 'zefei/cake16'
Plugin 'endel/vim-github-colorscheme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'marcus/vim-mustang'
Plugin 'goatslacker/mango.vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"


" Gist madness
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

call vundle#end()
filetype plugin indent on


" Config madness
let mapleader = ","
let g:mapleader = ","

" Tab control
nmap <Leader>tt :tabnew<space>
nmap <Leader>tn :tabNext<CR>
nmap <Leader>tp :tabprevious<CR>

" Buffer control
nmap <Leader>bb :e<space>
nmap <Leader>bn :bnext<CR>
nmap <Leader>bp :bprevious<CR>

" Splits
nmap <Leader>sv :vsplit<space>
nmap <Leader>sh :split<space>

" Tagbar
map <F8> :TagbarToggle<CR>


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
set novisualbell
set noerrorbells
set guifont=DejaVu\ Sans\ Mono\ 9

set t_Co=256
if has("gui_running")
	set guioptions=-t
  colorscheme github
else
  set background=dark
  colorscheme solarized
endif

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
autocmd filetype ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 shiftwidth=2 colorcolumn=100

"PHP
autocmd FileType php setlocal colorcolumn=100

" HTML
autocmd filetype html setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 shiftwidth=2 colorcolumn=100

"JS
autocmd BufNew,BufReadPost *.js setlocal shiftwidth=4 expandtab colorcolumn=120

" TXT
autocmd FileType txt setlocal colorcolumn=100



" Misc
" Airline

set laststatus=2

let g:airline_powerline_fonts = 1

let g:airline_theme="base16"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1

" let g:airline#extensions#tabline#left_sep = '<'
" let g:airline#extensions#tabline#left_alt_sep = 'Ħ'
" let g:airline#extensions#tabline#right_sep = '>'
" let g:airline#extensions#tabline#right_alt_sep = 'Ħ'


" let g:airline#extensions#bufferline#enabled = 1
" let g:airline#extensions#bufferline#overwrite_variables = 1

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#csv#enabled = 1

