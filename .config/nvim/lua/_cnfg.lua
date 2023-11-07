vim.cmd([[
  set termguicolors
  set showmode
  set nowrap
  set showmatch
  set number
  set hlsearch
  set showcmd
  set t_ut=""
  set mouse=a
  set tabstop=4
  set shiftwidth=4
  set pastetoggle=<F2>
]])


vim.g.python_highlight_space_errors=0

-- vim.g.material_style = "darker";
-- require('material').setup({
--     contrast = {
--         terminal = false, -- Enable contrast for the built-in terminal
--         sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
--         floating_windows = false, -- Enable contrast for floating windows
--         cursor_line = false, -- Enable darker background for the cursor line
--         non_current_windows = false, -- Enable contrasted background for non-current windows
--         filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
--     },
--
--     styles = { -- Give comments style such as bold, italic, underline etc.
--         comments = { --[[ italic = true ]] },
--         strings = { --[[ bold = true ]] },
--         keywords = { bold = true},
--         functions = { --[[ bold = true, undercurl = true ]] },
--         variables = {},
--         operators = {},
--         types = {},
--     },
--
--     plugins = { -- Uncomment the plugins that you use to highlight them
--         -- Available plugins:
--         -- "dap",
--         -- "dashboard",
--         -- "gitsigns",
--         -- "hop",
--         -- "indent-blankline",
--         -- "lspsaga",
--         -- "mini",
--         -- "neogit",
--         -- "neorg",
--         "nvim-cmp",
--         -- "nvim-navic",
--         -- "nvim-tree",
--         -- "nvim-web-devicons",
--         -- "sneak",
--         "telescope",
--         -- "trouble",
--         -- "which-key",
--     },
--
--     disable = {
--         colored_cursor = false, -- Disable the colored cursor
--         borders = false, -- Disable borders between verticaly split windows
--         background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
--         term_colors = false, -- Prevent the theme from setting terminal colors
--         eob_lines = false -- Hide the end-of-buffer lines
--     },
--
--     high_visibility = {
--         lighter = false, -- Enable higher contrast text for lighter style
--         darker = true -- Enable higher contrast text for darker style
--     },
--
--     lualine_style = "stealth", -- Lualine style ( can be 'stealth' or 'default' )
--
--     async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)
--
--     custom_colors = nil, -- If you want to everride the default colors, set this to a function
--
--     custom_highlights = {}, -- Overwrite highlights with your own
-- })
-- vim.cmd "colorscheme material"
--

require('zephyr')

vim.cmd [[
    hi! pythonDottedName gui=underdotted
    hi SemshiImported guifg=#dfdfdf gui=bold
    hi SemshiSelected gui=underline
]]

-- require('kanagawa').setup({
--     compile = false,             -- enable compiling the colorscheme
--     undercurl = true,            -- enable undercurls
--     commentStyle = { italic = true },
--     functionStyle = {},
--     keywordStyle = { italic = true},
--     statementStyle = { bold = true },
--     typeStyle = {},
--     transparent = false,         -- do not set background color
--     dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
--     terminalColors = true,       -- define vim.g.terminal_color_{0,17}
--     colors = {                   -- add/modify theme and palette colors
--         palette = {},
--         theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--     },
--     overrides = function(colors) -- add/modify highlights
--         return {}
--     end,
--     theme = "wave",              -- Load "wave" theme when 'background' option is not set
--     background = {               -- map the value of 'background' option to a theme
--         dark = "wave",           -- try "dragon" !
--         light = "lotus"
--     },
-- })
--
-- -- setup must be called before loading
-- vim.cmd("colorscheme kanagawa")

require('Comment').setup()
