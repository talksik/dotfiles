call plug#begin()
Plug 'junegunn/fzf'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
call plug#end()

let mapleader = " "

let g:fzf_layout = { 'down': '40%' }

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
nnoremap <silent> <leader>f :FZF<CR>
nnoremap <leader> <leader>e :Explore<CR>

" ripgrep as the grep engine
if executable('rg')
  set grepprg=rg\ --vimgrep\ --smart-case
  set grepformat=%f:%l:%c:%m
endif

" :Rg pattern  -> search, drop results in quickfix at the bottom, no auto-jump
command! -nargs=+ Rg execute 'silent grep! ' . <q-args> | botright cwindow

nnoremap <leader>g :Rg 
