require("_plug")
require("_lsp")
require("_cnfg")
require("_keybinds")
require("mason").setup()

-- airline
vim.g.airline_section_z = '%3.3l:%-03.3c'
vim.g.airline = {
  extensions = {
    whitespace = {
      enabled=0
    },
    tagbar = {
      enabled = 1,
      flags = 'f'
    }
  }
}

vim.g.autopep8_ignore="E501,W293"
vim.g.autopep8_max_line_length=120
vim.g.autopep8_disable_show_diff=1
