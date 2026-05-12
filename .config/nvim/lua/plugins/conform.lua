return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			-- python = { "ruff_organize_imports", "ruff_fix", "ruff_format" },
			-- rust = { "rustfmt", lsp_format = "fallback" },
			-- Conform will run the first available formatter
			-- javascript = { "prettierd", "prettier", stop_after_first = true },
			-- json = { "prettierd", "prettier", stop_after_first = true },
			-- typescript = { "prettierd", "prettier", stop_after_first = true },
			-- typescriptreact = { "prettierd", "prettier", stop_after_first = true },
			-- htmldjango = {"djlint"},

			--- c/cpp
			-- c = { "clang-format" },
			-- cpp = { "clang_formatter" },
		},
	},

	init = function()
		require("conform").formatters.ruff_format = {
			prepend_args = {
				"--config",
				"format.quote-style = 'preserve'",
			},
		}
		require("conform").formatters.clang_formatter = {
			command = "clang-format",
			args = '--style="{BasedOnStyle: llvm, IndentWidth: 4, ColumnLimit: 100}"',
		}
	end,
}
