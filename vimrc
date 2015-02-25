set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

""" Plugins 

	" Vundle (self-update)
	Plugin 'gmarik/Vundle.vim'

	" Fugitive : Git
	Plugin 'tpope/vim-fugitive'

	" NERDTree : File explorer	
	Plugin 'scrooloose/nerdtree'

    " Surround : Use brackets and parens easily
	Plugin 'tpope/vim-surround'

    " Syntastic : Syntax checker
	Plugin 'scrooloose/syntastic'

    " Ctrl+P : File search like SublimeText
	Plugin 'kien/ctrlp.vim'

    " Colorscheme
	Plugin 'altercation/vim-colors-solarized'

    " Comment blocks <leader> + cc / cu
	Plugin 'scrooloose/nerdcommenter'

    " Best status line ever
	Plugin 'bling/vim-airline'

    " TODO Elm 
    Plugin 'lambdatoast/elm.vim'

    " Rainbow lisp parenthesis
    Plugin 'amdt/vim-niji'
    
    " Easymotion
    Plugin 'Lokaltog/vim-easymotion'

    " CLOJURE DEV TODO
    "Plugin 'tpope/vim-leiningen'
    "Plugin 'tpope/vim-fireplace'
    "
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Colors

set background=dark " Cambiar a light para el tono arena. 
colorscheme solarized

" Basics

:syntax on

set nocompatible		" Eliminar retrocompatibilidad
set modelines=0			" Seguridad (por exploits)

set tabstop=4			" 4 espacios de tabulacion
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set number              " Muestra numeros de linea
set relativenumber
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile		" Archivo de texto para guardar los undo al cerrar. 

set ignorecase		" Ignora mayus/minus al buscar
set smartcase		" Mejora el trabajo con mayus minus

set incsearch		" Muestra resultados de busqueda mientas escribes
set showmatch
set hlsearch	

"set wrap
set colorcolumn=80

" Leader remap to space
let mapleader = "\<Space>"

" Save a file: 
nnoremap <Leader>w :w<CR>


" CtrlP
:let g:ctrlp_map = '<C-p>'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
":let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

"" NerdTree
:nmap <Leader>e :NERDTreeToggle<CR>

"" Vim powerline

" El repositorio git es la carpeta .vim, donde está el archivo vimrc, que hay
" que enlazar a ~/.vimrc con
" ln -s ~/.vim/vimrc ~/.vimrc

"" Parentesis de colores, soporte para clips y jess
let g:niji_matching_filetypes = ['lisp', 'scheme', 'clojure', 'jess', 'clips', 'clp']

