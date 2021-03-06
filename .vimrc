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

" auto-complete
" Plugin 'Shougo/neocomplete.vim'
Plugin 'Valloric/YouCompleteMe'

" file browser
Plugin 'scrooloose/nerdtree'

" make nerdtree works better with tabs
Plugin 'jistr/vim-nerdtree-tabs'

" git wrapper
Plugin 'tpope/vim-fugitive'

" better commenting mechanism
Plugin 'scrooloose/nerdcommenter'

" syntax checker
Plugin 'scrooloose/syntastic'

" Solarized color scheme
Plugin 'altercation/vim-colors-solarized'

" better text traversing
Plugin 'easymotion/vim-easymotion'

" better status line
Plugin 'itchyny/lightline.vim'

" avoid auto indenting when pasting
Plugin 'ConradIrwin/vim-bracketed-paste'

" PlantUML syntax
Plugin 'aklt/plantuml-syntax'

" some nice command mappings
Plugin 'tpope/vim-unimpaired'

" end of plugin list
" ------------------

call vundle#end()
filetype plugin indent on

" General Vim settings
" ====================

syntax enable

" use Solarized dark background
" Use try to handle when solarized not found
try
    set background=dark
    let g:solarized_termcolors=256
    colorscheme solarized
endtry

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

" enable mouse
set mouse=a

" show line number
set number

" set font and encoding for gVim
if has("gui_running") && has("win32")
    set encoding=utf8
    set langmenu=en_US.UTF-8
    let $LANG = 'en_US.UTF-8'
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    set guifont=Consolas:h11
endif

" spell-checking
" set spell spelllang=en_us

" tab handling shortcuts
nmap <C-p> :tabprev<CR>
nmap <C-n> :tabnext<CR>

" remove search pattern with BS
nnoremap <silent> <BS> :let @/=""<CR>

" Plugin settings
" ===============

" Nerd Tree
" ---------
" move panel to the right side
let g:NERDTreeWinPos = "right"

" Nerd Tree Tabs
" --------------
" set <leader>f as toggle key
nnoremap <Leader>f :NERDTreeTabsToggle<CR>
" don't open on gui startup
let g:nerdtree_tabs_open_on_gui_startup = 2

" Nerd Commenter
" --------------
" let comment delimiters left-aligned
let g:NERDDefaultAlign = 'left'
" add one space after delimiters
let g:NERDSpaceDelims = 1

" Syntastic
" ---------
" recommended default settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" lightline
" ---------
" let g:lightline = {
"             \'colorscheme': 'solarized_dark'
"             \ }
" always display status line
set laststatus=2

" fzf
" ---
" add fzf repository to runtime path
set rtp+=~/.fzf
