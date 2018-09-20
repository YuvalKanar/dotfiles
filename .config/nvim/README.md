# Neovim
  This subdirectory contains my configuration files for NeoVim: <https://neovim.io/>

## Layout
  The configuration files are devided into five core files. init.vim is the main
  file which neovim reads from, and from there all of the other files are sourced.

### keys.vim
  This file holds all of the custom keybindings and keybindings related code.

### plugins.vim
  This file contains configurations for various plugins which I use.

### statusline.vim
  Althogh I like my Airline stock, a dedicated file for the statusline makes the
  configuration a little more neat.

### general.vim
  This file contains all of the commands which do not go under the other categories.
  This includes tab configuration, colorscheme settings, etc.
