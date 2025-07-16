return {
	"nvim-treesitter/nvim-treesitter-context",
	init = function()
		local config = require("treesitter-context")
		config.setup({
			enable = true,
		})
	end,
}
