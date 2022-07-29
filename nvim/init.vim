
set nocompatible
set number
syntax enable
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
"set expandtab
set smarttab
set lazyredraw
set ignorecase
set ai "Auto indent
set si "Smart indent
set relativenumber

filetype plugin indent on

set wildmenu
set wildmode=longest:full
set wildignore+=*/node_modules/*

au BufNewFile,BufRead *.odin set syntax=odin
au BufNewFile,BufRead *.odin set filetype=odin

autocmd BufWritePost .vimrc source $MYVIMRC

runtime ./plug.vim
runtime ./maps.vim

if has('win32')
  runtime ./windows.vim
endif

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif

let $FZF_DEFAULT_COMMAND = 'fd --type f'
