#!/bin/bash

TOOLSDIR=$(dirname $(readlink -f $0));

cd;

# install neovim
python3 -m pip install neovim pynvim;

# get the config
cd ${TOOLSDIR};

cp -r .config/nvim ~/.config/;

# install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# install plugins
nvim +PackerInstall +qall
nvim "+MasonInstall autopep8 flake8 json-lsp lua-language-server" +qall
