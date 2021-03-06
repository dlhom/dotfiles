set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'tpope/vim-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" always show that status line
set laststatus=2


" faster redrawing
set ttyfast

" Set the boolean number option to true set number set number
set number

set t_Co=256
syntax on
colorscheme molokai

" Highlight current line
set cursorline

" Set the tab options
set smarttab
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" hightlight matching braces
set showmatch

" fix copy paste in vim for tmux
set clipboard=unnamed

" code folding settings
set foldmethod=syntax       " fold based on indent
set foldnestmax=10          " deepest fold is 10 levels
set nofoldenable            " don't fold by default
set foldlevel=1

" tmp dir
set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//

" Disable ex-mode
map Q <Nop>

" map , to <leader>
let mapleader=','

" Open NERDTree file navigator
noremap <leader>t :NERDTree<CR>

" Disable arrow keys
" inoremap <Left>     <NOP>
" inoremap <Right>    <NOP>
" inoremap <Up>       <NOP>
" inoremap <Down>     <NOP>

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
