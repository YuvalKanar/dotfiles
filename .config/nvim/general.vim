filetype plugin on
filetype indent on

au BufLeave * silent! wa

" Color configuration
colorscheme gruvbox
let g:gruvbox_contrast_dark='soft'
set background=dark
hi Comment cterm=italic
hi Comment guifg=#5C6370 ctermfg=59
let g:palenight_terminal_italics=1
set termguicolors

" Disable line numbers in terminal
au TermOpen * setlocal nonumber norelativenumber

set autoread
set number

" Required for operations modifying multiple buffers like rename.
set hidden

set complete-=t

" Disable search highlighting
set nohlsearch

" Enable mouse in normal mode
set mouse=n

set noshowmode

set completeopt+=menuone
set completeopt+=noselect
set completeopt-=preview
set shortmess+=c

set updatetime=10

set cursorline

set backspace=indent,eol,start

set colorcolumn=80

" Tab settings
set tabstop=4
set softtabstop=4 
set shiftwidth=4 
set expandtab

" Display whitespace
set list
set listchars=tab:@▸,trail:·,eol:¬

" Folding settings
set foldmethod=indent
set foldlevel=1
set foldclose=all
