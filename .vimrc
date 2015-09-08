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

" let pathogen save us some headaches
execute pathogen#infect()

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
