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
inoremap <expr> <tab> pumvisible() ? "<C-n>" : "<tab>"
inoremap <expr> <S-tab> pumvisible() ? "<C-p>" : "<S-tab>"

" Visual mode global replace macro
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>

" FZF bindings
nnoremap <C-p> :FZF<CR>

" Misc bindings
nnoremap <leader>rr :source $MYVIMRC<CR>
nnoremap zz :update<CR>

" Scrolling
nnoremap <C-k> <C-y>
nnoremap <C-j> <C-e>

" Folding
nnoremap <leader>zc zM
nnoremap <leader>zo zR
nnoremap <leader>zd :set foldlevel=1<CR>

" Snippets
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

