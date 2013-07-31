#!/bin/bash

# git settings

cp -rf .gitconfig ~/

# bash settings
cp -rf .bash* ~/


# vim settings 
cp -rf .vimrc ~/
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

cd ~/.vim/bundle
git clone git://github.com/tpope/vim-rails.git
git clone git://github.com/tpope/vim-bundler.git
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/mmalecki/vim-node.js.git
