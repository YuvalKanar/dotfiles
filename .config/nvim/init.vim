syntax on
call plug#begin('~/.local/share/nvim/plugged')

" Misc plugins
Plug 'tpope/vim-commentary'
" Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'dhruvasagar/vim-table-mode'
Plug 'godlygeek/tabular'
Plug 'plytophogy/vim-virtualenv'
Plug 'tpope/vim-fugitive'
Plug 'vimwiki/vimwiki'
Plug 'benmills/vimux'
Plug 'junegunn/goyo.vim'
Plug 'ap/vim-css-color'
" Plug 'chiel92/vim-autoformat'
" Plug 'chrisbra/NrrwRgn'

" Ui
Plug 'airblade/vim-gitgutter'

" Project exploration
Plug 'jlanzarotta/bufexplorer'
Plug 'scrooloose/nerdtree'
Plug 'derekwyatt/vim-fswitch'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Color schemes
Plug 'morhetz/gruvbox'
Plug 'nightsense/vimspectr'
Plug 'tomasr/molokai'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'liuchengxu/space-vim-dark'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'jdkanani/vim-material-theme'
Plug 'junegunn/seoul256.vim'
Plug 'bellma101/vim-snazzy'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'blueshirts/darcula'
Plug 'tyrannicaltoucan/vim-deep-space'

" Completion
Plug 'neomake/neomake'
Plug 'davidhalter/jedi-vim'
Plug 'hdima/python-syntax'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'sirver/UltiSnips'

call plug#end()

" Sourcing configurations
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/statusline.vim
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/keys.vim
