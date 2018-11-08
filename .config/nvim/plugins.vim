" Python versions control
let g:virtualenv_directory = '/home/card/.pyenv/versions/'
let g:python_host_prog = '/home/card/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/card/.pyenv/versions/neovim3/bin/python'

let NERDTreeMapActivateNode='l'

let g:echodoc_enable_at_startup = 1

" python linting
let g:neomake_python_enabled_makers = ['mypy', 'flake8']

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

" Calendar options
let g:calendar_google_calendar = 1

" Markdown settings
let g:instant_markdown_slow = 1
let g:markdown_enable_spell_checking = 0

" Tables
let g:table_mode_corner='|'

" Wrap
set nowrap
