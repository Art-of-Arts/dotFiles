call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rose-pine/vim'
call plug#end()

set background=dark
colorscheme rosepine

set termguicolors
set number
set hls is
set mouse=a

set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab
set number relativenumber
set autoindent smartindent

syntax on

cmap w!! w !sudo tee > /dev/null %
" found out this is a comment!

let g:netrw_browse_split=4
let g:coc_clangd_path = '/path/to/clangd'

let @i="c\"\"\<Esc>Pl"
let @b="ggi#!/usr/bin/env bash\<CR>\<CR>\<Esc>"

" hi Normal guibg=NONE ctermbg=NONE
