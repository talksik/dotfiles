call plug#begin()
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
call plug#end()

" Use ripgrep to list files (fast, respects .gitignore)
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git/*"'

let mapleader = " "

" set autochdir

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set number relativenumber

set signcolumn=yes

set noswapfile
set noundofile
set nobackup
set nowritebackup

set hlsearch
set incsearch
set ignorecase

set tags=./tags;,tags

colorscheme habamax

" Read changes to files on disk automatically without needing to reload
set autoread

" Mappings
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
