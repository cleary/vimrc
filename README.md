vimrc
=====

Vim config and plugins

````
sudo apt-get install vim-nox ruby-dev rake flake8 build-essential tmux
git clone --recursive https://github.com/cleary/vimrc.git ~/.vim/
ln -s ~/.vim/dot.vimrc ~/.vimrc
# build Command-T
cd ~/.vim/bundle/command-t/
rake make
# build vim-tidal
cd ~/.vim/bundle/vim-tidal/
sudo make install
````


Pathogen for plugin management:
  - https://github.com/tpope/vim-pathogen

Command-T plugin for file management:
  - https://github.com/wincent/Command-T
  - ,t to open, Ctrl-v/Ctrl-s to open file in a split, Ctrl-c to cancel
  - add `stty -ixon` to .bashrc to disable Ctrl-s override (Ctrl-q to resume flow)

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
  - start with `tidalvim`
---

These plugins are included as git submodules, read about submodules in git here:
  - http://git-scm.com/docs/git-submodule

Add submodules via (example):
````
git submodule add -f https://github.com/tpope/vim-rhubarb.git bundle/vim-rhubarb
````

