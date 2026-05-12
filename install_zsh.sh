#!/usr/bin/env zsh

# the configs directory
TOOLSDIR="${0:A:h}"

# get prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

cd ~/

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

cd $TOOLSDIR;

cat .zshrc > ~/.zshrc

# copy the theme over
cp prompy_myown_setup ~/.zprezto/modules/prompt/functions/
