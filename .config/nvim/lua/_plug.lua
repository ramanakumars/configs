-- Plugins
vim.cmd [[packadd packer.nvim]]

-- vim.call('plug#begin', '~/.config/nvim/plugged')
return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'https://github.com/rafi/awesome-vim-colorschemes'
	use 'vim-airline/vim-airline'
	use 'sheerun/vim-polyglot'
	use 'dunckr/vim-monokai-soda'
	use 'flrnd/plastic.vim'

	use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" }

	use 'neovim/nvim-lspconfig'

	use 'tree-sitter/tree-sitter-python'

	use 'lervag/vimtex'
	use 'elzr/vim-json'
	use 'preservim/tagbar'
	use 'tell-k/vim-autopep8'

	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use "L3MON4D3/LuaSnip"

	use('williamboman/mason.nvim')
end)
