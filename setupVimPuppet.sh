#!/bin/bash

if [[ ! -d $HOME/.vim/bundle/vim-puppet ]];then
  echo "* Setting up Vim-Puppet..."
  cd ~/.vim/bundle/ && git clone git://github.com/rodjek/vim-puppet.git && cd -
else
  echo "* Vim-Puppet is readly installed."
fi
