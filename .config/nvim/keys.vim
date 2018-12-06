" Use <escape> to exit insert mode in terminal
tnoremap <Esc> <C-\><C-n>

" Open terminal inside of vim
nnoremap T :terminal <Enter>

" Tabs
nnoremap <space>t :tabnext <Enter>
nnoremap <space>T :tabnew <Enter>

" Window manipulation
nnoremap <space>h <C-w>h
nnoremap <space>j <C-w>j
nnoremap <space>k <C-w>k
nnoremap <space>l <C-w>l

nnoremap <space>H <C-w>H
nnoremap <space>J <C-w>J
nnoremap <space>K <C-w>K
nnoremap <space>L <C-w>L

nnoremap <space><C-H> :vertical resize -5<CR>
nnoremap <space><C-J> :res +1<CR>
nnoremap <space><C-K> :res -1<CR>
nnoremap <space><C-L> :vertical resize +5<CR>

" Windows splits
nnoremap <space>s <C-w>s
nnoremap <space>v <C-w>v

" NERDTree toggling
nnoremap <tab> :NERDTreeToggle<CR>

" Remapping semi-colon for convenience
noremap ; :

" Auto-completion pop-up window configuration
inoremap <expr> <CR> pumvisible() ? "<C-y>" : "<CR>"
inoremap <expr> ( pumvisible() ? "<C-y>(" : "("
imap <expr> <tab> pumvisible() ? "<C-n>" : "<tab>"
inoremap <expr> <S-tab> pumvisible() ? "<C-p>" : "<S-tab>"

" Visual mode global replace macro
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>

" FZF bindings
nnoremap <C-p> :FZF<CR>

" Misc bindings
nnoremap <leader>rr :source $MYVIMRC<CR>
nnoremap zz :update<CR>

" Scrolling
nnoremap <c-k> <C-y>
nnoremap <c-j> <C-e>

" nnoremap L :nohl<CR>
nnoremap <leader>a :nohl<CR>

nnoremap <leader>ss :set syntax=
nnoremap <leader>nm :Neomake<CR>
nnoremap <leader>fs :FSHere<CR>
nnoremap <leader>cp :VimuxPromptCommand<CR>

inoremap <C-o> <C-x><C-o>
inoremap <C-f> <C-x><C-f>
inoremap <C-s> <C-x><C-s>

" Buffer scrolling
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bw :bw<CR>

" Zen-mode using Goyo
nnoremap <leader>zm :Goyo<CR>

" Create shortcuts
nnoremap <leader>ct :!ctags -R .<CR>
nnoremap <leader>cm :!cmake .<CR>
