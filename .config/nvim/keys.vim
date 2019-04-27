" Use <escape> to exit insert mode in terminal
tnoremap <Esc> <C-\><C-n>

" noremap j gj
" noremap k gk

" Open terminal inside of vim
nnoremap T :terminal <Enter>

" Tabs
nnoremap <space>t :tabnext <Enter>
nnoremap <space>T :tabnew <Enter>

" NERDTree toggling
nnoremap <tab> :NERDTreeToggle<CR>

" Visual mode global replace macro
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>

" FZF bindings
nnoremap <C-p> :FZF<CR>

" Misc bindings
nnoremap <leader>rr :source $MYVIMRC<CR>

" Scrolling
nnoremap <c-k> <C-y>
nnoremap <c-j> <C-e>

" nnoremap L :nohl<CR>
nnoremap <leader>a :nohl<CR>

nnoremap <leader>ss :set syntax=
nnoremap <leader>fs :FSHere<CR>
nnoremap <leader>vpc :VimuxPromptCommand<CR>

" Autocompletion
inoremap <C-o> <C-x><C-o>
inoremap <C-f> <C-x><C-f>
inoremap <C-s> <C-x><C-s>
nnoremap <leader>sp :call ToggleSpell()<CR>

" Buffer scrolling
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bw :bw<CR>

" Zen-mode using Goyo
nnoremap <leader>zm :Goyo<CR>

" Creation shortcuts
nnoremap <leader>ct :!ctags -R .<CR>
nnoremap <leader>cm :!cmake .<CR>

nmap <C-s> :w<CR>
