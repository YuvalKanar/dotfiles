" Python versions control
let g:virtualenv_directory = '/home/card/.pyenv/versions/'
let g:python_host_prog = '/home/card/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/card/.pyenv/versions/neovim3/bin/python'

let NERDTreeMapActivateNode='l'

let g:echodoc_enable_at_startup = 1

let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 1
let g:deoplete#sources#clang#libclang_path="/usr/lib/libclang.so"
let g:deoplete#sources#clang#clang_header="/usr/lib/clang"
let g:deoplete#sources#clang#clang_complete_database=getcwd()
let g:deoplete#enable_refresh_always = 1

" cpp linting
let g:neomake_cpp_enabled_makers = ['clang']
let g:neomake_cpp_clang_maker = {
   \ 'exe': 'clang++',
   \ 'args': ['-Wall', '-Iinclude', '-std=c++17'],
   \ }

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
augroup end

" Calendar options
let g:calendar_google_calendar = 1
