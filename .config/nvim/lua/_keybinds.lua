-- clear the last search
vim.api.nvim_set_keymap(
	"n",
	"<leader>sc",
	':let @/="" <cr>',
	{ noremap = true }
)

vim.api.nvim_set_keymap(
	"n",
	"t",
	'gt',
	{ noremap = true }
)

vim.api.nvim_set_keymap(
	"n",
	"T",
	'gT',
	{ noremap = true }
)


vim.api.nvim_set_keymap(
	"n",
	"[g",
	"<cmd>lua vim.diagnostic.goto_prev()<CR>",
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
	"n",
	"]g",
	"<cmd>lua vim.diagnostic.goto_next()<CR>",
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
	'n',
	'ff',
	'<cmd>lua vim.lsp.buf.format { async = true }<CR>',
	{ noremap = true, silent = true }
)
