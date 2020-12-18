call plug#begin('~/.vim/plugged')
Plug 'caksoylar/vim-mysticaltutor'
Plug 'mattn/emmet-vim'
Plug 'StanAngeloff/php.vim'
Plug 'chrismccord/bclose.vim'
Plug 'vim-syntastic/syntastic'
Plug 'vim-vdebug/vdebug'
Plug 'vim-scripts/VisIncr'
Plug 'tpope/vim-surround'
Plug 'vim-latex/vim-latex'
Plug 'drmikehenry/vim-fontsize'
call plug#end()

"Toggling on jumping between if and endif
runtime macros/matchit.vim

set modelines=1
set showcmd
set showmatch
set noswapfile
set nobackup
set undofile
set undodir=~/.vim/undodir
set fileformat=unix

"Disables beeping sounds
set noerrorbells

"Highlights line and row which cursor is currently in
set cursorline
set cursorcolumn

"Opens new files without having to save current file
set hidden

"Shows line number
set number

"Sets non-case-sensitive and increamental search
set smartcase
set ignorecase
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

"Remaps Esc
inoremap <Esc> <Esc><Esc>

"Remaps go to last non-space character of displayed line
execute "set <A-l>=\el"
nnoremap <A-l> g$
vnoremap <A-l> g$

"Map with ALT key
"Shortcuts all lines selecting
execute "set <A-v>=\ev"
nnoremap <A-v> vg_

"Map with ALT key
"Shortcuts all lines selecting
execute "set <A-a>=\ea"
nnoremap <A-a> ggVG

"Map with ALT key
"Shortcuts current session openning in gvim
execute "set <A-g>=\eg"
nnoremap <A-g> :mksession! ~/session.vim<CR>:!gvim -S ~/session.vim<CR><CR>

"Map with ALT key
"Remaps terminal calling
execute "set <A-t>=\et"
nnoremap <A-t> <C-z>

"Map with ALT key
"Shortcuts file write and quit
execute "set <A-w>=\ew"
nnoremap <A-w> :w<CR>
execute "set <A-q>=\eq"
nnoremap <A-q> :q<CR>

"Map with ALT key
"Shortcuts repository tree openning
execute "set <A-e>=\ee"
nnoremap <A-e> :e .<CR>

"Map with ALT key
"Remap visual column
execute "set <A-v>=\ev"
vnoremap <A-v> <C-v>

"Map with ALT key
"Remaps go to fist non-space character of displayed line
execute "set <A-h>=\eh"
nnoremap <A-h> g^
vnoremap <A-h> g^

"Map with ALT key
"Remaps scroll downwards
execute "set <A-j>=\ej"
nnoremap <A-j> <C-d>
vnoremap <A-j> <C-d>

"Map with ALT key
"Remaps scroll upwards
execute "set <A-k>=\ek"
nnoremap <A-k> <C-u>
vnoremap <A-k> <C-u>

"Remaps go to next displayed line
nnoremap j gj
vnoremap j gj

"Remaps go to previous displayed line
nnoremap k gk
vnoremap k gk

"Remaps tab in and out
nnoremap <Tab> I<Tab><Esc>
nnoremap <S-Tab> I<BS><Esc>

"Map with ALT key
"Remaps to insert line above and to to insert mode
execute "set <A-o>=\eo"
nnoremap <A-o> O

"Remaps O to insert line above
nnoremap O O<Esc>

"Remaps l and h to jump to the beginning of next and previous word
nnoremap h b
vnoremap h b
nnoremap l w
vnoremap l w

"Remaps l and h to jump to the beginning of next and previous word
nnoremap H ge
vnoremap H ge
nnoremap L e
vnoremap L e

"Remaps L and H to move cursor left and right character
nnoremap <C-h> h
vnoremap <C-h> h
nnoremap <C-l> l
vnoremap <C-l> l

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

"Map with ALT key
"Remaps go to next occurence
execute "set <A-/>=\e/"
nnoremap <A-/> *

"Remaps go to next and previous block
nnoremap { }
nnoremap } {
vnoremap { }
vnoremap } {

"Remaps redo
nnoremap U <C-r>

"Remaps copy and paste block of code to clipboard
vnoremap <C-c> "+y
nnoremap <C-v> "+P

"Remaps copy from current possition to the end of line
nnoremap Y yg_

"Remaps split navigation
nnoremap <leader>hh <C-w>h
nnoremap <leader>jj <C-w>j
nnoremap <leader>kk <C-w>k
nnoremap <leader>ll <C-w>l

"Remaps split resize
nnoremap <leader>se <C-w>=
nnoremap <leader>sl <C-w>10>
nnoremap <leader>sh <C-w>10<
nnoremap <leader>sj <C-w>5+
nnoremap <leader>sk <C-w>5-

"Remaps split arrangement
nnoremap <leader>mh <C-w>H
nnoremap <leader>mj <C-w>J
nnoremap <leader>mk <C-w>K
nnoremap <leader>ml <C-w>L

"Remaps go to marks
nnoremap gm `m
nnoremap ga `a
nnoremap gs `s

"Shortcuts split creation
nnoremap <leader>vs :vsp .<CR>
nnoremap <leader>hs :sp .<CR>

"Shortcuts to split a line
nnoremap <leader>J i<CR><Esc>

"Shortcuts add new line and escape
nnoremap <CR> o<Esc>

"Shortcuts buffers manipulation
nnoremap <leader>bb <C-^>
nnoremap <leader>bf :buffer<Space>
nnoremap <leader>bc :Bclose<CR>
nnoremap <leader>bd :bdelete<CR>

"Shortcuts buffers focus and undo focus
nnoremap <leader>oo :mksession! ~/session.vim<CR>:on<CR>
nnoremap <leader>uu :source ~/session.vim<CR>

"Shortcuts VIMRC summoning and sourcing
nnoremap <leader>ev :vsp $MYVIMRC<CR><c-w>L
nnoremap <leader>sv :w <bar> :source $MYVIMRC <bar> :doautocmd BufRead<CR>

"Shortcuts plugins installation
nnoremap <leader>pi :PlugInstall<CR>

"Shortcuts auto indent
nnoremap <leader>== gg=G``

"Shortcuts all occurrences replacing
nnoremap <leader>ca :%s//gc<Left><Left><Left>

"Shortcuts all occurrences replacing in one line
nnoremap <leader>cl :s//g<Left><Left>
vnoremap <leader>cl :s//g<Left><Left>

"Shortcuts all occurrences replacing in a block of code
nnoremap <leader>cb :.,s//g<Left><Left><Left><Left>
vnoremap <leader>cb :.,s//g<Left><Left><Left><Left>

"Shortcut function block copy and deletion
nnoremap yaf :call FunctionInteract('y')<CR>
nnoremap daf :call FunctionInteract('d')<CR>

"Shortcut if else block copy and deletion
nnoremap yai :call IfElseBlockInteract('y')<CR>
nnoremap dai :call IfElseBlockInteract('d')<CR>

"Shortcut while block copy and deletion
nnoremap yal :call WhileBlockInteract('y')<CR>
nnoremap dal :call WhileBlockInteract('d')<CR>

"Shortcut switch case block copy and deletion
nnoremap yac :call SwitchCaseBlockInteract('y')<CR>
nnoremap dac :call SwitchCaseBlockInteract('d')<CR>

"Shortcut cpp function block copy and deletion
nnoremap yae :call CppFunctionBlockInteract('y')<CR>
nnoremap dae :call CppFunctionBlockInteract('d')<CR>

"Automatically delete trailing white spaces before saving a file
autocmd BufWritePre * :call StripTrailingWhitespace()

"Automatically delete trailing white spaces before saving a file
autocmd BufWritePre * :call TrimTrailingLines()

"Function to delete trailing white spaces
function StripTrailingWhitespace()
    if !&binary && &filetype != 'diff'
        normal mz
        normal Hmy
        %s/\s\+$//e
        normal 'yz<CR>
        normal `z
    endif
endfunction

"Function to delete empty lines at the end of file
function TrimTrailingLines()
    let lastLine = line('$')
    let lastNonblankLine = prevnonblank(lastLine)
    if lastLine > 0 && lastNonblankLine != lastLine
        silent! execute lastNonblankLine + 1 . ',$delete _'
    endif
endfunction

"Function to delete or yank an entire function
function FunctionInteract(choice)
    "choice = 'y' for yank an entire function
    "choice = 'd' for delete an entire function
    execute search('function','bc')
    let l:position = line('.')
    let l:line = getline(l:position)
    let l:nextline = getline(l:position + 1)
    let l:array= split(l:line)
    let l:arrayNext= split(l:nextline)
    if l:array[-1] == '{'
        execute 'normal $V%' . a:choice
    elseif l:arrayNext[-1] == '{'
        execute 'normal Vj%' . a:choice
    else
        execute 'normal V%' . a:choice
    endif
endfunction

function IfElseBlockInteract(choice)
    "choice = 'y' for yank an entire if else block
    "choice = 'd' for delete an entire if else block
    execute search('if','bc')
    let l:position = line('.')
    let l:line = getline(l:position)
    let l:nextline = getline(l:position + 1)
    let l:array= split(l:line)
    let l:arrayNext= split(l:nextline)
    if l:array[-1] == '{'
        execute 'normal $V%' . a:choice
    elseif l:arrayNext[-1] == '{'
        execute 'normal Vj%' . a:choice
    else
        execute 'normal V%' . a:choice
    endif
endfunction

function WhileBlockInteract(choice)
    "choice = 'y' for yank an entire while block
    "choice = 'd' for delete an entire while block
    execute search('while','bc')
    let l:position = line('.')
    let l:line = getline(l:position)
    let l:nextline = getline(l:position + 1)
    let l:array= split(l:line)
    let l:arrayNext= split(l:nextline)
    if l:array[-1] == '{'
        execute 'normal $V%' . a:choice
    elseif l:arrayNext[-1] == '{'
        execute 'normal Vj%' . a:choice
    else
        execute 'normal V%' . a:choice
    endif
endfunction

function SwitchCaseBlockInteract(choice)
    "choice = 'y' for yank an entire switch case block
    "choice = 'd' for delete an entire switch case block
    execute search('switch','bc')
    let l:position = line('.')
    let l:line = getline(l:position)
    let l:nextline = getline(l:position + 1)
    let l:array= split(l:line)
    let l:arrayNext= split(l:nextline)
    if l:array[-1] == '{'
        execute 'normal $V%' . a:choice
    elseif l:arrayNext[-1] == '{'
        execute 'normal Vj%' . a:choice
    else
        execute 'normal V%' . a:choice
    endif
endfunction

function CppFunctionBlockInteract(choice)
    "choice = 'y' for yank an entire cpp function block
    "choice = 'd' for delete an entire cpp function block
    execute search('{','bc')
    let l:position = line('.')
    let l:line = getline(l:position)
    let l:prevline = getline(l:position - 1)
    let l:array= split(l:line)
    let l:arrayPrev= split(l:prevline)
    if len(l:array) > 1
        execute 'normal $V%' . a:choice
    elseif len(l:array) == 1
        execute 'normal kVj%' . a:choice
    endif
endfunction
