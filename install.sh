#!/bin/bash

# Requirement
# GIT

mv ~/.gitconfig ~/.old_gitconfig
mv ~/.bashrc ~/.old_bashrc
mv ~/.bash_profile ~/.old_bashprofile
mv ~/.irbrc ~/.old_irbrc

# git settings
echo "# Git Setting ( Press just Enter if you don't want to set )"

cp -rf .selected_editor ~/
read -p "Your git user name : " username
read -p "Your git user email : " useremail
git config --global user.name $username
git config --global user.email $useremail
git config --global core.editor vim
git config --global i18n.commitEncoding 'utf8'

cat .gitconfig >> ~/.gitconfig

# bash settings
cp -rf .bash* ~/

# irbrc setting
cp -rf .irbrc ~/

# npm setting
echo "prefix = $HOME/.npm/" > ~/.npmrc

# vim settings 
cp -rf .vimrc ~/
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -L -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/tpope/vim-rails.git
git clone https://github.com/tpope/vim-bundler.git
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/mmalecki/vim-node.js.git
git clone https://github.com/kchmck/vim-coffee-script.git
git clone https://github.com/groenewege/vim-less.git
git clone https://github.com/junegunn/seoul256.vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/plasticboy/vim-markdown.git
git clone https://github.com/tpope/vim-fugitive.git
# need mercurial ( apt-get install -y mercurial )
git clone https://github.com/fatih/vim-go.git
git clone git://github.com/slim-template/vim-slim.git

echo "execute command: \"source ~/.bash_profile\""
