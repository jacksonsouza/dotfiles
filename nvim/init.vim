call plug#begin('~/.config/nvim/plugged')
Plug 'ervandew/supertab'                "String auto completion
Plug 'Raimondi/delimitMate'             "Bracket auto completion
Plug 'scrooloose/nerdcommenter'         "Smarter commenting
Plug 'junegunn/fzf'                     "Fuzzy finding
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'              "File directory
Plug 'prettier/vim-prettier'            "File formatting
    
Plug 'bling/vim-airline'                "Smarter bottom bar
Plug 'morhetz/gruvbox'

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'moll/vim-node'
Plug 'ahayman/vim-nodejs-complete'
Plug 'mxw/vim-jsx'
Plug 'slim-template/vim-slim'            "HTML Slim templates
Plug 'elzr/vim-json'
Plug 'nono/vim-handlebars'               "HTML Handlebars templates
call plug#end()

"Key mappings located in /after/plugin to override plugin hijacking
filetype plugin on
filetype on           
filetype indent on   

"Remove trailing highlighted spaces
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.sh :%s/\s\+$//e

let g:jsx_ext_required = 0

set autochdir
set ignorecase
set smartcase
let g:is_posix = 1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set virtualedit=onemore
set timeout timeoutlen=300 ttimeoutlen=300

set t_Co=256

syntax on
colorscheme gruvbox
set background=dark

set modeline
set tabstop=2 softtabstop=2 expandtab shiftwidth=2
set smartindent

set clipboard=unnamed

" Line numbers
set nu
set nowrap 
set number                     " Show current line number
set relativenumber             " Show relative line numbers

" Always show statusline
set laststatus=2

" Backspace Legit
set backspace=2
set title
set fileformat=unix
set undolevels=20
set noerrorbells
set noswapfile
set nobackup
set autoindent
set mouse-=a
set wrap
set linebreak
set nolist  " list disables linebreak

let g:NERDCreateDefaultMappings = 0

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
