syntax on
call plug#begin('~/.local/share/nvim/plugged')

" Misc plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'chiel92/vim-autoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'dhruvasagar/vim-table-mode'
Plug 'godlygeek/tabular'
Plug 'plytophogy/vim-virtualenv'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'itchyny/calendar.vim'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-expand-region'
Plug 'chrisbra/NrrwRgn'
Plug 'gabrielelana/vim-markdown'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'hdima/python-syntax'

" Project exploration
Plug 'jlanzarotta/bufexplorer'
Plug 'scrooloose/nerdtree'
Plug 'derekwyatt/vim-fswitch'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
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
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-go'
Plug 'zchee/deoplete-zsh'
Plug 'Shougo/echodoc.vim'
Plug 'neomake/neomake'
Plug 'davidhalter/jedi-vim'

call plug#end()

" Sourcing configurations
source $HOME/.config/nvim/keys.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/statusline.vim
source $HOME/.config/nvim/general.vim
