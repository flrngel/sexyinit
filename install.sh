#!/bin/bash

# git settings
echo "# Git Setting"
read -p "Your git user name : " username
read -p "Your git user email : " useremail
echo -e "[user]" > .gitconfig
echo -e "\tname = $username" >> .gitconfig
echo -e "\temail = $useremail" >> .gitconfig

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
git clone https://github.com/kchmck/vim-coffee-script.git

source ~/.bashrc
