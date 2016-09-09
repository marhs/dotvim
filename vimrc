""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIMRC
" Marco Herrero <me@marhs.de> / http://marhs.de/
"
" Install instructions in the last lines, use:
"   > cat .vimrc
" to see the instructions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
" I use Vundle to install almost everithing, but this is being changed every
" few months. Bungle, pathogen, etc.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

    " Ctrl+P : File/tag/buffer search like SublimeText
    Plugin 'ctrlpvim/ctrlp.vim'
        :let g:ctrlp_map = '<C-p>'
        :let g:ctrlp_match_window_bottom = 1
        :let g:ctrlp_match_window_reversed = 1
        :let g:ctrlp_custom_ignore = '\v\$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
        :let g:ctrlp_working_path_mode = 'r'
        :let g:ctrlp_dotfiles = 0
        :let g:ctrlp_switch_buffer = 0

    " Comment blocks <leader> + cc / cu
    " TODO Must be a nicer way to do this without a plugin
    Plugin 'scrooloose/nerdcommenter'

    " Best status line ever
    " You need a patched font
    Plugin 'bling/vim-airline'
        let g:airline_powerline_fonts = 1
        "let g:airline_theme = 'base16'

    " Easymotion
    Plugin 'Lokaltog/vim-easymotion'

    " Tagbar
    Plugin 'majutsushi/tagbar'

    " EditorConfig
    Plugin 'editorconfig/editorconfig-vim'
    
    """"""""""""""""""""""""""""""""""""""""""
    " Colorschemes
    """"""""""""""""""""""""""""""""""""""""""
    "Plugin 'altercation/vim-colors-solarized'
    "Plugin 'chriskempson/base16-vim'
    Plugin 'chriskempson/base16-vim'
    Plugin 'NLKNguyen/papercolor-theme'
        let g:airline_theme = "papercolor"

    """"""""""""""""""""""""""""""""""""""""""
    " Language specific
    """"""""""""""""""""""""""""""""""""""""""
    " Clojure
    "Plugin 'tpope/vim-salve'
    "Plugin 'tpope/vim-fireplace'
    " TODO Parens color plugin

    " Elm
    "Plugin 'lambdatoast/elm.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#end()            " required
filetype plugin indent on    " required

set background=dark                 " Dark/light
colorscheme PaperColor

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basics
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:syntax on

set hidden
set history=10000

" Tab & Indent settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

set linespace=-2
set laststatus=2              " Windows always have status bars
set encoding=utf-8
set number
set relativenumber
set scrolloff=5
set showcmd                   " Show commands in last line
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set undofile                  " Save undo actions to a file

" Case
set ignorecase
set smartcase

" Search
set incsearch
set showmatch
set hlsearch

" Files and backup
set nobackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set noswapfile
set nowritebackup
set autoread

"set wrap
set colorcolumn=120

" Python folds with vim
set foldmethod=indent
set foldnestmax=3
set foldlevel=99

"set foldlevelstart=20

"set list            " Shows a simbol where the line ends
"
"set guifont=Meslo\ LG\ M\ for\ Powerline
set guifont=Hack
"set guifont=Inconsolata\ for\ Powerline\ 11
set linespace=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PERSONAL KEYMAPS (Be careful in your workflow with these)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader remap to space
let mapleader = "\<Space>"

" Open .vimrc in a new tab with <Leader>vr
:nmap <Leader>vr :tabe ~/.vim/vimrc<cr>

" Search the selection in visual mode
vnoremap * y/<C-R>"<CR>

" Save a file:
nnoremap <Leader>w :w<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP Tags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nnoremap <Leader>p :CtrlPBufTag<CR>
:nmap <Leader>bb :CtrlPBuffer<cr>
:nmap <Leader>bm :CtrlPMixed<cr>
:nmap <Leader>bs :CtrlPMRU<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree
" <leader> e
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nmap <Leader>e :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fugitive
" <leader> g*
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nmap <Leader>gd :Gvdiff<CR>
:nmap <Leader>gc :Gcommit<CR>
:nmap <Leader>gw :Gwrite<CR>
:nmap <Leader>gr :Gread<CR>
:nmap <Leader>gs :Gstatus<CR>
:nmap <Leader>gb :Gblame<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TAGBAR
" <leader> tb
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nnoremap <Leader>tb :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SYNTASTIC
" <leader> sc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" Python pep8 style checker
:nmap <Leader>sc :SyntasticCheck flake8<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" INDENT if we're at the beginning of a line. Else, do COMPLETION.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE
" <leader> n
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Diff tab management: open the current git diff in a tab
" <leader> d + <leader> D
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TODO This seems interesting for bigger screens
command! GdiffInTab tabedit %|vsplit|Gdiff
nnoremap <leader>d :GdiffInTab<cr>
nnoremap <leader>D :tabclose<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ct :! ctags -R ./<cr>
:set tags=./tags;

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GVIM
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set guioptions-=m " Remove menu bar
set guioptions-=T " Remove tool bar
set guioptions-=r " Remove right scroll bar
set guioptions-=L " Remove left scroll bar

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INSTALL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" First, clone the repo and link the .vimrc:
"
" git clone https://github.com/marhs/dotvim.git ~/.vim
" ln -s ~/.vim/vimrc ~/.vimrc
"
" Then install vundle
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
" Open vim and execute :PluginInstall
" Restart VIM and you're done!
"
"
" P.S: I use a patched font (Hack at 12 points) for airline. You can set your
" own or ignore it with set guifont
