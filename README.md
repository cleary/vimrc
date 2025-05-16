neovim config
=====

neovim config and plugins

TODO: rename files/project to be better suited for neovim (migrating from vim)

````
sudo apt-get install flake8 curl ripgrep fzy
git clone https://github.com/cleary/vimrc.git
cp vimrc/dot.vimrc ~/.config/nvim/init.vim

# get Plug manager
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install Plugins with Plug
vim +Silent +VimEnter +PlugInstall +qall

# build vim-tidal
cd ~/.config/nvim/plugged/vim-tidal/
sudo make install
````

vim-plug for plugin management:
  - https://github.com/junegunn/vim-plug

neovim-fuzzy plugin for file management:
  - https://github.com/cloudhead/neovim-fuzzy
  - Ctrl+p to open, Ctrl-v/Ctrl-s to open file in a split, Ctrl-c to cancel

vim-fugitive plugin for git integration:
  - https://github.com/tpope/vim-fugitive

rhubarb.vim plugin for fugitive/github integration:
  - https://github.com/tpope/vim-rhubarb

vim-gitgutter.vim plugin to show live git diff hunks
  - https://github.com/airblade/vim-gitgutter

SimpylFold plugin for Python folding support
  - https://github.com/tmhedberg/SimpylFold

vim-flake8 plugin for Python PEP8 syntax/style checking
  - https://github.com/nvie/vim-flake8
  - F7 to check

vim-match-up plugin for section highlighting, and motions
  - https://github.com/andymass/vim-matchup.git
  - % to toggle start/end tags

vim-tidal plugin for TidalCycles live coding environment
  - https://github.com/tidalcycles/vim-tidal
  
auto-pairs plugin for auto-completing brackets/braces/quote pairs
  - https://github.com/jiangmiao/auto-pairs

smear cursor for easier cursor tracking on large screens 
  - https://github.com/sphamba/smear-cursor.nvim

neoscroll plugin for smooth vertical scrolling
  - https://github.com/karb94/neoscroll.nvim

undotree plugin for visualising undo history
  - https://github.com/mbbill/undotree
  - F5 to activate pane

onedark theme by joshdick
  - https://github.com/joshdick/onedark.vim
