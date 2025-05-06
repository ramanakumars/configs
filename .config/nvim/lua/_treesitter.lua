require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "lua" },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<Enter>", -- set to `false` to disable one of the mappings
      node_incremental = "<Enter>",
      scope_incremental = false,
      node_decremental = "<Backspace>",
    },
  },
}

