set nocompatible
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
Plug 'artur-shaik/vim-javacomplete2'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'fatih/vim-go'
" Plug 'sheerun/vim-polyglot'

" Completion
Plug 'fatih/vim-go'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'dense-analysis/ale'

call plug#end()
"""""""""""""""""""""""""""""""""""""

""" Generic Configuration
"""""""""""""""""""""""""""""""""""""
set number
" set relativenumber
set mouse=a
set wrap
set showcmd
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set scrolloff=4
set shortmess+=I
set laststatus=2
set linebreak
set hidden
set splitright
set incsearch

set exrc
set secure
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
                \ setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType vimwiki
                \ setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType python
                \ setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END
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
"""""""""""""""""""""""""""""""""""""

""" Colorscheme
"""""""""""""""""""""""""""""""""""""
set background=dark
let g:gruvbox_contrast_dark='medium'
color gruvbox
"""""""""""""""""""""""""""""""""""""

""" Keybindings
"""""""""""""""""""""""""""""""""""""
nnoremap ww :VimwikiIndex<CR>
"""""""""""""""""""""""""""""""""""""

""" Misc
"""""""""""""""""""""""""""""""""""""
" Restore cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"""""""""""""""""""""""""""""""""""""
