" Python versions control
let g:virtualenv_directory = '/home/card/.pyenv/versions/'
let g:python_host_prog = '/home/card/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/card/.pyenv/versions/neovim3/bin/python'

let NERDTreeMapActivateNode='l'

let g:echodoc_enable_at_startup = 1

" Neomake
"" Python
let g:neomake_python_enabled_makers = ['mypy', 'flake8']

let g:neomake_cpp_enabled_makers = []
let g:neomake_c_enabled_makers = []

let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""

call neomake#configure#automake('nrw', 1)

" omnifuncs
augroup omnifuncs
    autocmd!
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    autocmd FileType java setlocal omnifunc=javacomplete#Complete
augroup end

" Markdown settings
let g:instant_markdown_slow = 1
let g:markdown_enable_spell_checking = 0

" Tables
let g:table_mode_corner='|'
