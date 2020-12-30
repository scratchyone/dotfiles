" For NeoVim with vim-plug
call plug#begin(stdpath('data') . '/plugged')

Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'airblade/vim-gitgutter'

call plug#end()
syntax on
set clipboard+=unnamedplus
set number
colorscheme onedark
let g:lightline = {
  \   'colorscheme': 'onedark',
  \   'active': {
  \     'left':[ [ 'mode', 'paste' ],
  \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
  \     ]
  \   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   }
  \ }
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd TabEnter * NERDTree
autocmd TabEnter * wincmd p
nmap <silent> gd <Plug>(coc-definition)
set updatetime=100
