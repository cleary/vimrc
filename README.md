vimrc
=====

Vim config and plugins

````
sudo apt-get install vim-nox ruby-dev
git clone --recursive https://github.com/cleary/vimrc.git ~/.vim/
ln -s ~/.vim/dot.vimrc ~/.vimrc
cd ~/.vim/bundle/command-t/
rake make
````


Pathogen for plugin management:
  - https://github.com/tpope/vim-pathogen

Command-T plugin for file management:
  - https://github.com/wincent/Command-T
  - compiled for Ubuntu 14.04 amd64

vim-fugitive plugin for git integration:
  - https://github.com/tpope/vim-fugitive

rhubarb.vim plugin for fugitive/github integration:
  - https://github.com/tpope/vim-rhubarb
=====
These plugins are included as git submodules, read about submodules in git here:
  - http://git-scm.com/docs/git-submodule

Add submodules via (example):
````
git submodule add -f https://github.com/tpope/vim-rhubarb.git bundle/vim-rhubarb
````

