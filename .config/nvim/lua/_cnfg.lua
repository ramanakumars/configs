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

vim.cmd("colorscheme minimalist")

vim.g.python_highlight_space_errors=0
