vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open parent directory in Oil" })

vim.keymap.set("n", "<space>e", function()
	vim.diagnostic.open_float()
end, { desc = "Open diagnostic in a float window" })

-- clear the last search
vim.keymap.set("n", "<leader>sc", ':let @/="" <cr>', { noremap = true, desc = "Clear search query" })

vim.keymap.set(
	"n",
	"[g",
	"<cmd>lua vim.diagnostic.goto_prev()<CR>",
	{ noremap = true, silent = true, desc = "Go to previous diagnostic" }
)

vim.keymap.set(
	"n",
	"]g",
	"<cmd>lua vim.diagnostic.goto_next()<CR>",
	{ noremap = true, silent = true, desc = "Go to next diagnostic" }
)

vim.keymap.set("n", "<leader>cf", function()
	require("conform").format()
end, { desc = "Format the document" })
