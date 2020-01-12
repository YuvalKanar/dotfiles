scriptencoding utf-8
set nocompatible
set encoding=utf-8
set fileformat=unix
syntax on
filetype plugin indent on

""" Plug
"""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'ervandew/supertab'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tpope/vim-surround'

" Completion
Plug 'fatih/vim-go'
Plug 'davidhalter/jedi-vim'
Plug 'dense-analysis/ale'

call plug#end()
"""""""""""""""""""""""""""""""""""""

""" Generic Configuration
"""""""""""""""""""""""""""""""""""""
set number
set mouse=a
set ttymouse=xterm2
set wrap
set showcmd
set tabstop=4
set softtabstop=1
set shiftwidth=4
set noexpandtab
set autoindent
set scrolloff=4
set shortmess+=I
set laststatus=2
set linebreak
set hidden
set splitright
set splitbelow
set incsearch
set ignorecase
set smartcase
set ruler
set hlsearch

" Wildmenu
set wildmenu
set wildmode=full

set colorcolumn=80

set exrc
set secure

set list
set listchars=tab:\|\ ,trail:·,eol:¬

set conceallevel=2
"""""""""""""""""""""""""""""""""""""

""" Omnifuncs
"""""""""""""""""""""""""""""""""""""
augroup omnifuncs
    autocmd!
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    autocmd Filetype java setlocal omnifunc=javacomplete#Complete
    autocmd FileType java setlocal completefunc=javacomplete#CompleteParamsInfo
augroup end
"""""""""""""""""""""""""""""""""""""

""" Syntax specific settings
"""""""""""""""""""""""""""""""""""""
augroup syntaxspecific
    autocmd!
    autocmd FileType javascript
                \ setlocal tabstop=2 shiftwidth=2
    autocmd FileType vimwiki
                \ setlocal tabstop=2 shiftwidth=2
    autocmd FileType python
                \ setlocal tabstop=4 shiftwidth=4
augroup END

let g:python_recommended_style=0
"""""""""""""""""""""""""""""""""""""


""" SuperTab
"""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "<c-n>"
autocmd FileType python,go let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
"""""""""""""""""""""""""""""""""""""

""" Python Jedi
"""""""""""""""""""""""""""""""""""""
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
"""""""""""""""""""""""""""""""""""""

""" Vimwiki
"""""""""""""""""""""""""""""""""""""
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

let wiki = {}
let wiki.path = '~/vimwiki/'
let wiki.syntax = 'markdown'
let wiki.ext = '.md'
let wiki.nested_syntaxes = {'python': 'python', 'cpp': 'cpp', 'c': 'c'}
let g:vimwiki_list = [wiki]

let g:vimwiki_global_ext = 0
"""""""""""""""""""""""""""""""""""""

""" Colorscheme
"""""""""""""""""""""""""""""""""""""
set background=dark
let g:gruvbox_contrast_dark='medium'
color gruvbox
"""""""""""""""""""""""""""""""""""""

""" Keybindings
"""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>a :nohlsearch<cr>
"""""""""""""""""""""""""""""""""""""

""" Misc
"""""""""""""""""""""""""""""""""""""
" Restore cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" ALE
let g:ale_set_loclist=0
" 'cd' towards the directory in which the current file is edited
" but only change the path for the current window
nnoremap <silent> <leader>cd :lcd %:h<CR>

" Open files located in the same dir in with the current file is edited
nnoremap <leader>ew :e <C-R>=expand("%:.:h") . "/"<CR>
"""""""""""""""""""""""""""""""""""""
