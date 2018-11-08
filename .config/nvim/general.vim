filetype plugin on
filetype indent on

au BufLeave * silent! wa

" Color configuration
colorscheme gruvbox
let g:gruvbox_contrast_dark='soft'
set background=dark
let g:palenight_terminal_italics=1
set termguicolors

hi Search cterm=NONE ctermfg=white ctermbg=darkgrey

" Disable line numbers in terminal
au TermOpen * setlocal nonumber norelativenumber

set autoread
set number

" Required for operations modifying multiple buffers like rename.
set hidden

set complete-=t

" Enable mouse in normal mode
set mouse=n

set noshowmode

set completeopt-=preview

set updatetime=10

set cursorline

set backspace=indent,eol,start

set colorcolumn=80

" Global tab settings
set tabstop=4
set softtabstop=4 
set shiftwidth=4 
set expandtab

augroup syntaxspecific
    autocmd!
    autocmd FileType javascript
                \ setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType python
                \ setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd FileType vimwiki
                \ setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

" Display whitespace
set list
set listchars=tab:!▸,trail:·,eol:¬

set inccommand=nosplit
set scrolloff=4
