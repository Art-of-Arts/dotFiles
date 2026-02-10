call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rose-pine/vim'
call plug#end()

" theme
set background=dark
colorscheme rosepine

" look & feel
set termguicolors
set number
set hls is
set mouse=a

set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab
set number relativenumber
set autoindent smartindent

syntax on

let g:netrw_browse_split=4
let g:coc_clangd_path = '/path/to/clangd'

" macros & mappings
let @i="c\"\"\<Esc>Pl"
let @b="ggi#!/usr/bin/env bash\<CR>\<CR>\<Esc>"

nnoremap <Esc> :noh<CR><C-l><Esc>
cmap w!! w !sudo tee > /dev/null %

" hi Normal guibg=NONE ctermbg=NONE
