#!/bin/bash

# get zsh
sudo apt-get update
sudo apt-get -y install zsh

sudo chsh -s /bin/zsh ${USER}

# get oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# copy the theme over 
cp -rp myown.zsh-theme ~/.oh-my-zsh/themes/

# set the theme
sed -i 's/ZSH_THEME=.*/ZSH_THEME="myown"/' ~/.zshrc
