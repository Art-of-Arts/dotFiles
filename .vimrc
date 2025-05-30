nnoremap j h
nnoremap ; l
nnoremap k j
nnoremap l k

xnoremap j h
xnoremap ; l
xnoremap k j
xnoremap l k

set number
set hls is
set mouse=a
set termguicolors

set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab
set number ruler
set autoindent smartindent

syntax on

cmap w!! w !sudo tee > /dev/null %
