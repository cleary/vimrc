vimrc
=====

Vim config and plugins

````
<<<<<<< HEAD
sudo apt-get install vim-nox ruby-dev flake8
||||||| merged common ancestors
sudo apt-get install vim-nox ruby-dev
=======
sudo apt-get install vim-nox ruby-dev rake
>>>>>>> c2843a7b8ca560931d6fbc68ed29a81724083342
git clone --recursive https://github.com/cleary/vimrc.git ~/.vim/
ln -s ~/.vim/dot.vimrc ~/.vimrc
cd ~/.vim/bundle/command-t/
rake make
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

SimpylFold plugin for Python folding support
  - https://github.com/tmhedberg/SimpylFold

vim-flake8 plugin for Python PEP8 syntax/style checking
  - https://github.com/nvie/vim-flake8
---

These plugins are included as git submodules, read about submodules in git here:
  - http://git-scm.com/docs/git-submodule

Add submodules via (example):
````
git submodule add -f https://github.com/tpope/vim-rhubarb.git bundle/vim-rhubarb
````

