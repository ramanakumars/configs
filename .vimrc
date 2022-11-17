" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
"
" Make sure you use single quotes
"
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
"
" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" Multiple " Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }
"
" " Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
"
" 
" Colorscheme plugins
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
" Plug 'https://github.com/sickill/vim-monokai'
" Plug 'agude/vim-eldar'
" Plug 'https://github.com/Mizux/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
" Plug 'https://github.com/gryf/wombat256grf'
" Plug 'phanviet/vim-monokai-pro'
Plug 'dunckr/vim-monokai-soda'
Plug 'flrnd/plastic.vim'

" Plug 'davidhalter/jedi-vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

" completion sources
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'vim-syntastic/syntastic'

" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'vim-scripts/pylint.vim'

" for Latex
Plug 'lervag/vimtex'

Plug 'elzr/vim-json'

" Initialize plugin system
call plug#end()


set termguicolors
colorscheme minimalist

set showmode
set nowrap
set showmatch
set number
set hlsearch
set pastetoggle=<F2> " press <F2> to go to paste mode which doesnt
                     " autoindent when pasting
set mouse=a

" clear the last search 
nnoremap <leader>sc :let @/="" <cr>

let g:python_highlight_space_errors=0
set t_ut=""
set showcmd

" enable ncm2 for all buffers                     
autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect    

" customizing airline
let g:currentmode={
      \ 'n'  : 'NORMAL',
      \ 'no' : 'N·Operator Pending ',
      \ 'v'  : 'VISUAL',
      \ 'V'  : 'V·Line ',
      \ 'x22' : 'V·Block ',
      \ 's'  : 'Select ',
      \ 'S'  : 'S·Line ',
      \ 'x19' : 'S·Block ',
      \ 'i'  : 'INSER',
      \ 'R'  : 'REPLACE',
      \ 'Rv' : 'V·Replace ',
      \ 'c'  : 'Command ',
      \ 'cv' : 'Vim Ex ',
      \ 'ce' : 'Ex ',
      \ 'r'  : 'Prompt ',
      \ 'rm' : 'More ',
      \ 'r?' : 'Confirm ',
      \ '!'  : 'SHELL ',
      \ 't'  : 'TERM '
      \}
let g:airline_section_z = '%3.3l:%-03.3c'
let g:airline#extensions#whitespace#enabled=0
" switching tabs
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

set tabstop=4
set shiftwidth=4

nnoremap t gt
nnoremap T gT

" bash style autocomplete
set wildmode=longest,list,full
set wildmenu

noremap  <buffer> <silent> <C-Up>   gk
noremap  <buffer> <silent> <C-Down> gj
noremap  <buffer> <silent> <C-Home> g<Home>
noremap  <buffer> <silent> <C-End>  g<End>

noremap <silent> <Leader>w :call ToggleWrap()<CR>
function ToggleWrap()
  if &wrap
    echo "Wrap OFF"
    setlocal nowrap
    set virtualedit=all
  else
    echo "Wrap ON"
    setlocal wrap linebreak nolist
    set virtualedit=
    setlocal display+=lastline
  endif
endfunction

let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \    '-shell-escape',
    \    '-verbose',
    \    '-file-line-error',
    \    '-synctex=1',
    \    '-interaction=nonstopmode',
    \ ],
    \}


" syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = "--ignore E501"

" see :h syntastic-loclist-callback
function! SyntasticCheckHook(errors)
    if !empty(a:errors)
        let g:syntastic_loc_list_height = min([len(a:errors), 10])
    endif
endfunction
