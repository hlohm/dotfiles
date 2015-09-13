" my first vimrc file
" Hergen Lohmeyer 2015
"


" MISC
" ====

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"---------------- autocommands
if has("autocmd")

    " automatic reloading of .vimrc
    autocmd bufwritepost .vimrc source $MYVIMRC

    " For all text files set 'textwidth' to 79 characters.
    autocmd FileType text setlocal textwidth=79

    highlight ExtraWhitespace ctermbg=red guibg=red
    match ExtraWhitespace /\s\+$/
    autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    autocmd InsertLeave * match ExtraWhitespace /\s\+$/
    autocmd BufWinLeave * call clearmatches()
endif
"----------------/autocommands

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O \
" wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
color wombat256mod

set t_Co=256            " we use a 256 color terminal
set colorcolumn=80      " mark 80th column
set history=500         " keep 500 lines of command line history
set showcmd             " display incomplete commands
set mouse=a	        	" enable mouse
set number              " line numbers on
set relativenumber      " relative line number for easier jumping
set clipboard=unnamed   " use global clipboard
set wildmenu            " show menu completions
syntax on       		" enable syntax highlighting


" ====
"/MISC

" PLUGINS
" =======

" Vundle setup, see:
" https://github.com/VundleVim/Vundle.vim
" ---------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'bling/vim-airline'
Plugin 'scroolose/nerdtree'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required / already set in INDENTATION SETTINGS
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ---------------------------------------
"/Vundle setup

" - switched to Vundle now -
" let pathogen save us some headaches
"execute pathogen#infect()
"/- switched to Vundle now -

" airline status line
let g:airline_powerline_fonts = 1
set laststatus=2        " always show statusline

" NERDTree file browser
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeStatusline=1
let NERDTreeMinimalUI=1
let NERDTreeAutoCenter=1
let NERDTreeAutoCenterThreshold=8
let NERDTreeQuitOnOpen=1
"autocmd vimenter * NERDTree     " alway show NERDTree on startup

" =======
"/PLUGINS

" INDENTATION SETTINGS
" ====================

" Enable file type detection.
" Use the default filetype settings
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

set tabstop=4           " set tabstops to 4 spaces
set expandtab           " convert tabs to spaces
set softtabstop=4       " tab indents by 4 spaces
set shiftwidth=4        " set autoindent to 4 spaces

vnoremap < <gv          " better indentation:
vnoremap > >gv          " preserves selection (roughly, that is)

" ====================
"/INDENTATION SETTINGS


" SEARCH OPTIONS
" ==============

set hlsearch		    " highlight search hits
set incsearch           " do incremental searching
set ignorecase          " Case insensitivity for searches
set smartcase           " smart case sensitivity

" ==============
"/SEARCH OPTIONS

" KEYBORD MAPPINGS
" ================



" ================
"/ KEYBORD MAPPINGS
