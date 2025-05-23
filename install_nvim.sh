#!zsh

TOOLSDIR="${0:A:h}"

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
nvim "+MasonInstall json-lsp lua-language-server ruff-lsp" +qall
