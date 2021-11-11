#!/bin/bash

sudo apt-get update;
sudo apt-get -y install python3 python3-pip
sudo -H python3 -m pip install -r base_packages.txt

./install_nvim.sh

# Install tmux
sudo apt-get install tmux

# copy the configuration
cp -rp .tmux.conf ~/

tmux source-file ~/.tmux.conf
