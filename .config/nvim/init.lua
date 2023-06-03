require("_plug")
require("_lsp")
require("_cnfg")
require("_keybinds")
require("_lualine")
require("mason").setup({
  ui = {
    border = "single"
  }
})

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "lua" },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  }
}

vim.g.autopep8_ignore="E501,W293"
vim.g.autopep8_max_line_length=120
vim.g.autopep8_disable_show_diff=1

