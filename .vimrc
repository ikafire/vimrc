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

" auto-complete
Plugin 'Valloric/YouCompleteMe'

" file browser
Plugin 'scrooloose/nerdtree'

" make nerdtree works better with tabs
Plugin 'jistr/vim-nerdtree-tabs'

" git wrapper
Plugin 'tpope/vim-fugitive'

" Solarized color scheme
Plugin 'altercation/vim-colors-solarized'

" end of plugin list
" ------------------

call vundle#end()
filetype plugin indent on

" General Vim settings
" ====================

syntax enable

" use Solarized dark background
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

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

" search when typing
set hlsearch

" highlight search results
set incsearch

" show cursor position in the bottom
set ruler

" enable mouse
set mouse=a

" show line number
set number

" tab handling shortcuts
nmap <C-p> :tabprev<CR>
nmap <C-n> :tabnext<CR>

" Plugin settings
" ===============

" pythom-mode
" -----------
" disable rope to avoid freezing
let g:pymode_rope = 0
" disable folding on start
let g:pymode_folding = 0

" Nerd Tree
" ---------
" move panel to the right side
let g:NERDTreeWinPos = "right"

" Nerd Tree Tabs
" --------------
" set <leader>f as toggle key
nnoremap <Leader>f :NERDTreeTabsToggle<CR>
