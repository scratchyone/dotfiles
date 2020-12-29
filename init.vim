" For NeoVim with vim-plug
call plug#begin(stdpath('data') . '/plugged')

Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'

call plug#end()
syntax on
set clipboard+=unnamedplus
set number
colorscheme onedark
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd TabEnter * NERDTree
autocmd TabEnter * wincmd p
