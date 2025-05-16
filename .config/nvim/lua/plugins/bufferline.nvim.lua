return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup()
		-- next/previous buffer
		vim.api.nvim_set_keymap("n", "t", "<cmd>BufferLineCycleNext<cr>", { noremap = true, desc = "Go to next tab" })
		vim.api.nvim_set_keymap("n", "T", "<cmd>BufferLineCyclePrev<cr>", { noremap = true, desc = "Go to previous tab" })
		vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>BufferLineMoveNext<cr>", { noremap = true, desc = "Move tab to the right" })
		vim.api.nvim_set_keymap("n", "<leader>T", "<cmd>BufferLineMovePrev<cr>", { noremap = true, desc = "Move tab to the left" })

		-- close buffer
		vim.api.nvim_set_keymap("n", "<leader>bd", "<cmd>bd<cr>", { noremap = true, desc = "Close buffer" })
	end
}
