syntax on
call plug#begin('~/.local/share/nvim/plugged')

" Misc plugins
Plug 'tpope/vim-commentary'
Plug 'chiel92/vim-autoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'dhruvasagar/vim-table-mode'
Plug 'godlygeek/tabular'
Plug 'plytophogy/vim-virtualenv'
Plug 'tpope/vim-fugitive'
Plug 'chrisbra/NrrwRgn'
Plug 'vimwiki/vimwiki'
Plug 'benmills/vimux'
Plug 'junegunn/goyo.vim'
Plug 'christoomey/vim-tmux-navigator'

" Ui
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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

" Completion
Plug 'neomake/neomake'
Plug 'Shougo/echodoc.vim'
Plug 'davidhalter/jedi-vim'
Plug 'hdima/python-syntax'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'gabrielelana/vim-markdown'

call plug#end()

" Sourcing configurations
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/statusline.vim
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/keys.vim
