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
        :let g:ctrlp_map = '<C-p>'
        :let g:ctrlp_match_window_bottom = 0
        :let g:ctrlp_match_window_reversed = 0
        :let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
        :let g:ctrlp_working_path_mode = 'r'
        :let g:ctrlp_dotfiles = 0
        :let g:ctrlp_switch_buffer = 0

    " Colorschemes
	"Plugin 'altercation/vim-colors-solarized'
    "Plugin 'chriskempson/base16-vim'
    Plugin 'NLKNguyen/papercolor-theme'
        let g:PaperColor_Light_CursorLine = "#dfdfff"
        "let g:airline_theme='PaperColor'
        
    " Comment blocks <leader> + cc / cu
	Plugin 'scrooloose/nerdcommenter'

    " Best status line ever
	Plugin 'bling/vim-airline'
        let g:airline_powerline_fonts = 1

    " Rainbow lisp parenthesis a.k.a WHERE MAGIC HAPPENS
    Plugin 'luochen1990/rainbow'

    " Easymotion
    Plugin 'Lokaltog/vim-easymotion'

    " Tagbar
    Plugin 'majutsushi/tagbar'

    " CLOJURE DEV TODO
    "Plugin 'tpope/vim-leiningen'
    "Plugin 'tpope/vim-fireplace'
    " TODO Elm 
    "Plugin 'lambdatoast/elm.vim'
    "

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set background=dark " Cambiar a light dark para el tono arena. 
colorscheme PaperColor

" Basics

:syntax on

set nocompatible		" Eliminar retrocompatibilidad FUCK THE OLD ONES
set modelines=0			" Seguridad (por exploits)

set tabstop=4			" 4 espacios de tabulacion
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set number              " Muestra numeros de linea
set relativenumber
set scrolloff=5
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
:nnoremap <Leader>p :CtrlPBufTag<CR>

"" NerdTree
:nmap <Leader>e :NERDTreeToggle<CR>

"" Fugitive
:nmap <Leader>gd :Gvdiff<CR>
:nmap <Leader>gc :Gcommit<CR>
:nmap <Leader>gw :Gwrite<CR>
:nmap <Leader>gr :Gread<CR> 
:nmap <Leader>gs :Gstatus<CR>

:nmap <Leader>bb :CtrlPBuffer<cr>
:nmap <Leader>bm :CtrlPMixed<cr>
:nmap <Leader>bs :CtrlPMRU<cr>

" Tagbar
:nnoremap <Leader>tt :TagbarToggle<CR>

"" Vim powerline
"
" El repositorio git es la carpeta .vim, donde está el archivo vimrc, que hay
" que enlazar a ~/.vimrc con
" ln -s ~/.vim/vimrc ~/.vimrc

"" Parentesis de colores, soporte para clips y jess
"let g:rainbow_active = 1
"

set guifont=Meslo\ LG\ M\ for\ Powerline

" Python folds with vim
"
set foldmethod=indent
set foldlevelstart=20

