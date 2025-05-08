vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open parent directory in Oil" })

vim.keymap.set("n", "<space>e", function()
	vim.diagnostic.open_float()
end, { desc = "Open diagnostic in a float window" })

-- clear the last search
vim.api.nvim_set_keymap("n", "<leader>sc", ':let @/="" <cr>', { noremap = true, desc = "Clear search query" })

-- next/previous buffer
vim.api.nvim_set_keymap("n", "t", "<cmd>bn<cr>", { noremap = true, desc = "Go to next tab" })
vim.api.nvim_set_keymap("n", "T", "<cmd>bp<cr>", { noremap = true, desc = "Go to previous tab" })

-- close buffer
vim.api.nvim_set_keymap("n", "<leader>bd", "<cmd>bd<cr>", { noremap = true, desc = "Go to previous tab" })

vim.api.nvim_set_keymap(
	"n",
	"[g",
	"<cmd>lua vim.diagnostic.goto_prev()<CR>",
	{ noremap = true, silent = true, desc = "Go to previous diagnostic" }
)

vim.api.nvim_set_keymap(
	"n",
	"]g",
	"<cmd>lua vim.diagnostic.goto_next()<CR>",
	{ noremap = true, silent = true, desc = "Go to next diagnostic" }
)

vim.keymap.set("n", "<leader>cf", function() require('conform').format() end, { desc = "Format the document"} )
