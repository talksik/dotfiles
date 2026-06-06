call plug#begin()
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

" Use ripgrep to list files (fast, respects .gitignore)
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git/*"'

let mapleader = " "

set autochdir

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set hlsearch
set incsearch

" Mappings
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>r :Rg<CR>
