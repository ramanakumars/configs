#!/bin/bash

export configs_dir=$(pwd);

# get zsh
sudo apt-get update
sudo apt-get -y install zsh

sudo chsh -s /bin/zsh ${USER}

# get prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

cd ~/

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

cd configs_dir;

cat .zshrc > ~/.zshrc
