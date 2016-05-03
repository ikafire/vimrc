" Vundle setup
" ============

set nocompatible
filetype off

" set vundle runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" start of plugin list
" --------------------

" let Vundle manage itself
Plugin 'VundleVim/Vundle.vim'

" better python support
Plugin 'klen/python-mode'

" end of plugin list
" ------------------

call vundle#end()
filetype plugin indent on

" General Vim settings
" ====================

syntax on

" set column indicator
set colorcolumn=80

" show whitespace chars
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" handle tabs and spaces
set autoindent
set backspace=2
set expandtab
set tabstop=4
set shiftwidth=4

" better search
set hlsearch
set incsearch

" show cursor position in the bottom
set ruler

" enable mouse
set mouse=a

" show line number
set number

" tab handling shortcuts
map  <C-c> :tabnew<CR>
imap <C-c> <ESC>:tabnew<CR>
map  <C-k> :tabclose<CR>
map  <C-p> :tabprev<CR>
imap <C-p> <ESC>:tabprev<CR>
map  <C-n> :tabnext<CR>

" Plugin settings
" ===============

" pythom-mode
" -----------
" disable rope to avoid freezing
let g:pymode_rope = 0
" disable folding on start
let g:pymode_folding = 0
