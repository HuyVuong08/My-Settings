call plug#begin('~/.vim/plugged')
Plug 'caksoylar/vim-mysticaltutor'
Plug 'mattn/emmet-vim'
Plug 'StanAngeloff/php.vim'
Plug 'vim-syntastic/syntastic'
Plug 'chrismccord/bclose.vim'
Plug 'vim-vdebug/vdebug'
Plug 'vim-scripts/VisIncr'
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

"Set wrap
set wrap 
set linebreak 
set nolist
set showbreak=--

"Maps leader key
let mapleader=' '
let g:user_emmet_leader_key=','

"Map with ALT key
"Remaps go to last non-space character of displayed line
execute "set <A-l>=\el"
nnoremap <A-l> g$
vnoremap <A-l> g$

"Map with ALT key
"Remaps go to fist non-space character of displayed line
execute "set <A-h>=\eh"
nnoremap <A-h> g^
vnoremap <A-h> g^

"Map with ALT key
"Remaps go to next physical line
execute "set <A-j>=\ej"
nnoremap <A-j> j
vnoremap <A-j> j

"Map with ALT key
"Remaps go to previous physical line
execute "set <A-k>=\ek"
nnoremap <A-k> k
vnoremap <A-k> k

"Remaps go to next displayed line
nnoremap j gj
vnoremap j gj

"Remaps go to previous displayed line
nnoremap k gk
vnoremap k gk

"Remaps tab in and out
nnoremap <Tab> I<Tab><Esc>
nnoremap <S-Tab> I<BS><Esc>

"Remaps <C-o> to insert line above and to to insert mode
nnoremap <C-o> O

"Remaps O to insert line above
nnoremap O O<Esc>

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

"Remaps copy a word
nnoremap yl yw
nnoremap yh yb

"Remaps change a word
nnoremap cl cw
nnoremap ch cb

"Remaps change words
nnoremap c2l c2w
nnoremap c3l c3w
nnoremap c4l c4w
nnoremap c5l c5w
nnoremap c2h c2b
nnoremap c3h c3b
nnoremap c4h c4b
nnoremap c5h c5b

"Remaps delete a word
nnoremap dh db
nnoremap dl dw

"Remaps delete words
nnoremap d2l d2w
nnoremap d3l d3w
nnoremap d4l d4w
nnoremap d5l d5w
nnoremap d2h d2b
nnoremap d3h d3b
nnoremap d4h d4b
nnoremap d5h d5b

"Remaps go to next occurence
nnoremap m *

"Remaps go to next and previous block
nnoremap { }
nnoremap } {
vnoremap { }
vnoremap } {

"Remaps redo
nnoremap U <C-r>

"Remaps terminal calling
nnoremap <leader>tt <C-z>

"Remaps copy and paste block of code to clipboard
vnoremap <C-c> "+y
nnoremap <C-v> "+P

"Remaps split navigation
nnoremap <leader>hh <C-w>h
nnoremap <leader>jj <C-w>j
nnoremap <leader>kk <C-w>k
nnoremap <leader>ll <C-w>l

"Remaps split resize
nnoremap <leader>se <C-w>=
nnoremap <leader>sl <C-w>10>
nnoremap <leader>sh <C-w>10<

"Remaps split arrangement
nnoremap <leader>mh <C-w>H
nnoremap <leader>mj <C-w>J
nnoremap <leader>mk <C-w>K
nnoremap <leader>ml <C-w>L

"Shortcuts split creation 
nnoremap <leader>vs :vsp .<CR>
nnoremap <leader>hs :sp .<CR>

"Shortcuts to split a line
nnoremap <leader>J i<CR><Esc>

"Shortcuts add new line and escape
nnoremap <CR> o<Esc>

"Shortcuts buffers manipulation
nnoremap <leader>bb <C-^>
nnoremap <leader>bf :buffer 
nnoremap <leader>bc :Bclose<CR>
nnoremap <leader>bd :bdelete<CR>

"Shortcuts buffers focus and undo focus
nnoremap <leader>oo :mksession! ~/session.vim<CR>:on<CR> 
nnoremap <leader>uu :source ~/session.vim<CR>

"Shortcuts file write and quit
nnoremap <leader>ww :w<CR>
nnoremap <leader>qq :q<CR>

"Open repository tree
nnoremap <leader>ee :e .<CR>

"Shortcuts VIMRC summoning and sourcing
nnoremap <leader>ev :vsp $MYVIMRC<CR> <C-w>L
nnoremap <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>

"Shortcuts plugins installation
nnoremap <leader>pi :PlugInstall<CR>

"Shortcuts auto indent
nnoremap <leader>== gg=G

"Shortcuts all occurrences changing in all lines 
nnoremap S :%s//g<Left><Left>

"Shortcuts all occurrences changing in one line
nnoremap ss :s//g<Left><Left>
vnoremap ss :s//g<Left><Left>



