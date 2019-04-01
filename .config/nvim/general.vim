filetype plugin on
filetype indent on

au BufLeave * silent! wa

" Color configuration
colorscheme gruvbox
let g:gruvbox_contrast_dark='soft'
set background=dark
" let g:deepspace_italics=1
let g:palenight_terminal_italics=1

if has("termguicolors")     " set true colors
    set t_8f=\[[38;2;%lu;%lu;%lum
    set t_8b=\[[48;2;%lu;%lu;%lum
    set termguicolors
endif

set colorcolumn=80
highlight ColorColumn ctermbg=darkgray

" hi Search cterm=NONE ctermfg=white ctermbg=darkgrey

" Disable line numbers in terminal
au TermOpen * setlocal nonumber norelativenumber

set autoread
set number

" Project specific vimrc
set exrc
set secure

" Required for operations modifying multiple buffers like rename.
set hidden

set complete=.,w,b,u,t,i,k

" Enable mouse in normal mode
set mouse=n

" set noshowmode

set completeopt=menu,longest

set updatetime=10

" set cursorline

set backspace=indent,eol,start

" Global tab settings
set tabstop=4
set softtabstop=4 
set shiftwidth=4 
set expandtab

augroup syntaxspecific
    autocmd!
    autocmd FileType javascript
                \ setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType vimwiki
                \ setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType python
                \ setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END

" Display whitespace
set list
set listchars=tab:!▸,trail:·,eol:¬

" Option for substitute commands
" set inccommand=nosplit

" Scroll offset
set scrolloff=4

set wrap

" set cmdheight=2
