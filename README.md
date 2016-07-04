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

Both Pathogen and Command-T are included as git submodules, read about submodules in git here:
  - http://git-scm.com/docs/git-submodule
