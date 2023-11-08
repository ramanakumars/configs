-- Plugins
vim.cmd [[ packadd packer.nvim ]]

-- vim.call('plug#begin', '~/.config/nvim/plugged')
return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'https://github.com/rafi/awesome-vim-colorschemes'
	use 'sheerun/vim-polyglot'
	use 'dunckr/vim-monokai-soda'
	use 'flrnd/plastic.vim'

	use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" }

	use 'neovim/nvim-lspconfig'

	use 'tree-sitter/tree-sitter-python'

	use 'lervag/vimtex'
	use 'elzr/vim-json'
	use 'tell-k/vim-autopep8'

	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use "L3MON4D3/LuaSnip"

	-- use 'marko-cerovac/material.nvim'
	-- use "rebelot/kanagawa.nvim"
	-- use({
	--   'glepnir/zephyr-nvim',
	--   requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
	-- })
	--
	use 'navarasu/onedark.nvim'

	use {
	  'wookayin/semshi',
	  build = ':UpdateRemotePlugins',
	  config = function()
		-- Defines custom user highlight for semshi.
		local function setup_highlight()
		  -- vim.api.nvim_set_hl(0, "semshiBuiltIn", vim.api.nvim_get_hl('Type') )
		  vim.api.nvim_set_hl(0, "semshiSelected", { cterm="underline", gui="underline" } )
		end
		-- Apply the highlight setting whenever colorscheme changes.
		vim.api.nvim_create_autocmd('Colorscheme', {
		  pattern = '*',
		  group = vim.api.nvim_create_augroup('semshi_colorscheme', { clear = true }),
		  callback = setup_highlight,
		})
		setup_highlight()
	  end,
  	}

	use 'kyazdani42/nvim-web-devicons'
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use 'nvim-lua/lsp-status.nvim'
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}

	use('williamboman/mason.nvim')
end)

