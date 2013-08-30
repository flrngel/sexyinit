#!/bin/bash

# git settings
echo "# Git Setting"
read -p "Your git user name : " username
read -p "Your git user email : " useremail
git config --global user.name $username
git config --global user.email $useremail
git config --global core.editor vim

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
git clone https://github.com/kchmck/vim-coffee-script.git
git clone https://github.com/groenewege/vim-less.git

source ~/.bashrc
