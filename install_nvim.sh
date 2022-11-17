#!/bin/bash

TOOLSDIR=$(dirname $(readlink -f $0));

cd;

## install neovim
sudo apt-get update
sudo apt-get -y install neovim;
sudo -H python3 -m pip install neovim jedi;

## get the config
cd ${TOOLSDIR};

cp -r .config/nvim ~/.config/;
cp .vimrc ~/;
cp .pylintrc ~/;

## install vim-plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## install plugins
nvim +PlugInstall
