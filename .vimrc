set nocompatible

syntax on
filetype plugin indent on

set colorcolumn=80

set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

set autoindent
set backspace=2
set expandtab
set tabstop=4
set shiftwidth=4

set hlsearch
set incsearch
set ruler
set mouse=a
set number
set listchars=tab:>-,trail:~,extends:>,precedes:<
set showcmd

map  <C-c> :tabnew<CR>
imap <C-c> <ESC>:tabnew<CR>
map  <C-k> :tabclose<CR>
map  <C-p> :tabprev<CR>
imap <C-p> <ESC>:tabprev<CR>
map  <C-n> :tabnext<CR>

