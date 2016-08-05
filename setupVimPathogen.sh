#!/bin/bash

if [[ ! -d ".vim" ]];then 
  echo "* Installing Vim-Pathogen..."
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
else
  echo "* Pathongen is already installed."
fi
if [[ ! -f ".vimrc" ]];then
echo "* Setting up Vim-Pathogen in .vimrc..."
cat << EOF > .vimrc
execute pathogen#infect()
execute pathogen#infect()
syntax on
filetype plugin indent on
EOF
else
  echo "* Vim-Pathogen is already configured."
fi

