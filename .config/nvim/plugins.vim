" Python versions control
let g:virtualenv_directory = '/home/card/.pyenv/versions/'
let g:python_host_prog = '/home/card/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/card/.pyenv/versions/neovim3/bin/python'

let NERDTreeMapActivateNode='l'

" let g:echodoc_enable_at_startup = 1

" " Use deoplete.
" let g:deoplete#enable_at_startup = 1

" Neomake
"" Python
" let g:neomake_python_enabled_makers = ['mypy', 'flake8']

" let g:neomake_cpp_enabled_makers = []
" let g:neomake_c_enabled_makers = []

" call neomake#configure#automake('nrw', 1)

let g:ale_lint_on_text_changed = 'normal'

let g:ale_linters = {
\ 'cs': ['OmniSharp'],
\}

" Fetch semantic type/interface/identifier names on BufEnter and highlight them
let g:OmniSharp_highlight_types = 1
let g:OmniSharp_server_use_mono = 1

augroup omnisharp_commands
    autocmd!

"     " When Syntastic is available but not ALE, automatic syntax check on events
"     " (TextChanged requires Vim 7.4)
"     " autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

"     " Show type information automatically when the cursor stops moving
"     autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    " Update the highlighting whenever leaving insert mode
    autocmd InsertLeave *.cs call OmniSharp#HighlightBuffer()

"     " " Alternatively, use a mapping to refresh highlighting for the current buffer
"     " autocmd FileType cs nnoremap <buffer> <Leader>th :OmniSharpHighlightTypes<CR>

"     " " The following commands are contextual, based on the cursor position.
"     " autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
"     " autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
"     " autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
"     " autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

"     " " Finds members in the current buffer
"     " autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

"     " autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
"     " autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
"     " autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
"     " autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
"     " autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>

"     " " Navigate up and down by method/property/field
"     " autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
"     " autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>
augroup END

let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""

" omnifuncs
augroup omnifuncs
    autocmd!
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    autocmd FileType java setlocal omnifunc=javacomplete#Complete
augroup end

let g:SuperTabDefaultCompletionType = "<c-n>"
autocmd FileType python let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" Markdown settings
" let g:instant_markdown_slow = 1
" let g:markdown_enable_spell_checking = 0

" Tables
let g:table_mode_corner='|'

" VimWiki
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

let wiki = {}
let wiki.path = '~/vimwiki/'
let wiki.syntax = 'markdown'
let wiki.ext = '.md'
let wiki.nested_syntaxes = {'python': 'python', 'cpp': 'cpp', 'c': 'c'}
let g:vimwiki_list = [wiki]

let g:vimwiki_global_ext = 0

let g:Hexokinase_ftAutoload = ['css', 'xml', 'html']
let g:Illuminate_delay = 100

let g:indentLine_setColors = 1
