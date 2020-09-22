syntax on 

let mapleader=' '
let g:user_emmet_leader_key=','

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set number
set modelines=1
set hidden
set showcmd
set cursorline
set showmatch
set nowrap
set smartcase
set noswapfile
set nobackup
set undofile
set undodir=~/.vim/undodir
set incsearch

call plug#begin('~/.vim/plugged')

Plug 'caksoylar/vim-mysticaltutor'

Plug 'mattn/emmet-vim'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

call plug#end()

colorscheme mysticaltutor
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
