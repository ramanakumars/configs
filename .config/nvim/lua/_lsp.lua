local lsp_status = require('lsp-status')
-- completion_customize_lsp_label as used in completion-nvim
-- Optional: customize the kind labels used in identifying the current function.
-- g:completion_customize_lsp_label is a dict mapping from LSP symbol kind 
-- to the string you want to display as a label
-- lsp_status.config { kind_labels = vim.g.completion_customize_lsp_label }

lsp_status.config({
    indicator_errors = '',
    indicator_warnings = '',
    indicator_info = '',
    indicator_ok = '',
})

-- Register the progress handler
lsp_status.register_progress()

-- Set up lspconfig.
config = {}
local capabilities = require('cmp_nvim_lsp').default_capabilities()
config.capabilities = vim.tbl_extend('keep', capabilities or {}, lsp_status.capabilities)

-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig['lua_ls'].setup {
    on_attach = lsp_status.on_attach,
    capabilities = config.capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = {'vim'}
			}
		}
	}
}
lspconfig['jsonls'].setup {
    on_attach = lsp_status.on_attach,
    capabilities = config.capabilities
}
lspconfig['clangd'].setup {
    handlers = lsp_status.extensions.clangd.setup(),
    on_attach = lsp_status.on_attach,
    capabilities = config.capabilities
}

-- Set up nvim-cmp.
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'path' },
    { name = 'nvim_lsp' },
    { name = 'nvim_lsp_signature_help' },
    { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- PYLSP
-- lspconfig.pylsp.setup {
-- 	capabilities = config.capabilities,
-- 	configurationSources = {'flake8', 'pyright'},
--     on_attach = lsp_status.on_attach,
-- 	settings = {
-- 		pylsp = {
-- 			plugins = {
-- 				autopep8 = {
-- 					enabled = false
-- 				},
-- 				flake8 = {
-- 					enabled = true,
-- 					ignore = {'E501','W503','W504','E731'},
-- 					maxLineLength = 100
-- 				},
-- 				pycodestyle = {
-- 					enabled = false
-- 				},
--                 pyflakes = {
--                     enabled = false
--                 },
-- 				jedi_completion = {
-- 					enabled = true,
-- 				},
-- 			}
-- 		}
-- 	}
-- }

lspconfig.ruff.setup {
  capabilities = config.capabilities,
  init_options = {
    settings = {
      logLevel = "debug",
      lint = {
        enable = true,
        preview = true,
        select = {"E", "F", "W"},
 	    ignore = {"E501", "E731"}
      },
    }
  }
}

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = false,
  update_in_insert = false,
  severity_sort = false,
})

-- autopep8
-- local Autopep8 = require'vim-autopep8'
--[[
vim.api.nvim_create_autocmd("CursorHold", {
  buffer = bufnr,
  callback = function()
    local opts = {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      border = 'rounded',
      source = 'always',
      prefix = ' ',
      scope = 'cursor',
    }
    vim.diagnostic.open_float(nil, opts)
  end
})
--]]
vim.o.updatetime = 50
local opts = {
  focusable = false,
  close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
  border = 'rounded',
  source = 'always',
  prefix = ' ',
  scope = 'line',
}
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, nil, opts)
 -- vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
