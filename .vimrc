syntax on 

call plug#begin('~/.vim/plugged')
Plug 'caksoylar/vim-mysticaltutor'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " On-demand loading
Plug 'chrismccord/bclose.vim'
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

"Remaps l and h to jump to next and previous word
nnoremap h b
nnoremap l w
vnoremap h b
vnoremap l w

"Remaps L and H to move cursor left and right
nnoremap H h
nnoremap L l
vnoremap H h
vnoremap L l

"Remaps tab in and out
nnoremap <Tab> I<Tab><Esc>
nnoremap <S-Tab> I<BS><Esc>

"Remaps <C-o> to insert line above and to to insert mode
nnoremap <C-o> O

"Remaps O to insert line above
nnoremap O O<Esc>

"Shortcuts to split a line
nnoremap <leader>o i<CR><Esc>

"Shortcuts add new line and escape
nnoremap <CR> o<Esc>

"Shortcuts split navigation
nnoremap <leader>hh <C-w>h
nnoremap <leader>jj <C-w>j
nnoremap <leader>kk <C-w>k
nnoremap <leader>ll <C-w>l

"Shortcuts split creation 
nnoremap <leader>vs :vsp .<CR>
nnoremap <leader>hs :sp .<CR>

"Shortcuts split resize
nnoremap <leader>we <C-w>=
nnoremap <leader>w. <C-w>5>
nnoremap <leader>w, <C-w>5<

"Shortcuts split arrangement
nnoremap <leader>mh <C-w>H
nnoremap <leader>mj <C-w>J
nnoremap <leader>mk <C-w>K
nnoremap <leader>ml <C-w>L

"Shortcuts buffers manipulation
nnoremap <leader>oo :on<CR>
nnoremap <leader>bb <C-^>
nnoremap <leader>bf :buffer 
nnoremap <leader>bc :Bclose<CR>

"Shortcuts VIMRC summoning and sourcing
nnoremap <leader>ev :vsp $MYVIMRC<CR> <C-w>L
nnoremap <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>

"Shortcuts Nerd Tree toggle
nnoremap <leader>nt :NERDTreeToggle<CR>

"Shortcuts all occurrences replacement 
nnoremap S :%s//g<Left><Left> 

 

