call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rose-pine/vim'
call plug#end()

set background=dark
colorscheme rosepine

" Function to set background color via OSC 11
function! SetGhosttyBackground(color)
  call system('printf "\033]11;' . a:color . '\007"')
endfunction

" Function to reset background (you can set this to another color if you prefer)
function! ResetGhosttyBackground()
  call system('printf "\033]111\007\"')
endfunction

" Set rose-pine background on Vim startup
autocmd VimEnter * call SetGhosttyBackground('#191724')

" Reset background on Vim exit
autocmd VimLeave * call ResetGhosttyBackground()

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
let @b="ggi#!/bin/bash\<CR>\<BS>\<CR>\<Esc>"

