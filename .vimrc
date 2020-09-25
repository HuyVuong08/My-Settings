syntax on 

call plug#begin('~/.vim/plugged')
Plug 'caksoylar/vim-mysticaltutor'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " On-demand loading
call plug#end()

set noerrorbells
set number
set modelines=1
set hidden
set showcmd
set cursorline
set showmatch
set nowrap
set noswapfile
set nobackup
set undofile
set undodir=~/.vim/undodir
set fileformat=unix

"Sets search rules
set smartcase
set incsearch

"Sets tab size to 4 spaces
set tabstop=4 
set softtabstop=4
set shiftwidth=4

"Converts tabs to spaces
set autoindent
set expandtab
set smartindent

"Sets split directions
set splitbelow
set splitright

"Sets color scheme
colorscheme mysticaltutor
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

"Maps leader key
let mapleader=' '
let g:user_emmet_leader_key=','

"Shortcuts add new line and escape
map <S-Enter> o<Esc>

"Remaps L and H to jump to next and previous word
nnoremap H b
nnoremap L w

"Shortcuts split navigation, saving a keypress
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Shortcuts VIMRC summoning and sourcing
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>

"Shortcuts Nerd Tree toggle
nnoremap <leader>nt :NERDTreeToggle<CR>

"Shortcuts all occurrences replacement 
nnoremap S :%s//g<Left><Left>



