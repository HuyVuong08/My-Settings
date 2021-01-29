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
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"Syntax highlighting for .config files
autocmd BufRead,BufNewFile *.conf setf dosini

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
"Shortcuts visual to end of line
execute "set <A-v>=\ev"
nnoremap <A-v> vg_

"Map with ALT key
"Shortcuts select all lines
execute "set <A-a>=\ea"
nnoremap <A-a> ggVG

"Map with ALT key
"Shortcuts open current session in gvim
execute "set <A-g>=\eg"
nnoremap <A-g> :mksession! ~/session.vim<CR>:!gvim -S ~/session.vim<CR><CR>

"Map with ALT key
"Remaps terminal calling
execute "set <A-t>=\et"
nnoremap <A-t> <C-z>

"Map with ALT key
"Shortcuts file write and quit
execute "set <A-w>=\ew"
nnoremap <A-w> ma:w<CR>`a
execute "set <A-q>=\eq"
nnoremap <A-q> :q<CR>

"Map with ALT key
"Shortcuts open repository tree
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

"Remaps go to next block
"Map with ALT key
execute "set <A-j>=\ej"
nnoremap <A-j> }
vnoremap <A-j> }

"Remaps go to previous block
"Map with ALT key
execute "set <A-k>=\ek"
nnoremap <A-k> {
vnoremap <A-k> {

"Map with ALT key
"Remaps insert line above and to to insert mode
execute "set <A-o>=\eo"
nnoremap <A-o> O

"Map with ALT key
"Shortcuts visual column
execute "set <A-c>=\ec"
nnoremap <A-c> v<C-v>

"Map with ALT key
"Remaps manual page openning
execute "set <A-i>=\ei"
nnoremap <A-i> K

"Map with ALT key
"Remaps manual page openning
execute "set <A-i>=\ei"
nnoremap <A-i> K

"Remaps line merge and split
nnoremap <leader>mm J
nnoremap <leader>um i<CR><ESC>

"Remaps vertical line scroll
nnoremap J <C-e>
nnoremap K <C-y>

"Remaps scroll downwards
nnoremap { <C-d>
vnoremap { <C-d>

"Remaps scroll upwards
nnoremap } <C-u>
vnoremap } <C-u>

"Remaps go to next displayed line
nnoremap j gj
vnoremap j gj

"Remaps go to previous displayed line
nnoremap k gk
vnoremap k gk

"Remaps tab in and out
nnoremap <Tab> I<Tab><Esc>
nnoremap <S-Tab> I<BS><Esc>

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

"Remaps redo
nnoremap U <C-r>

"Remaps copy and paste block of code to clipboard
vnoremap <C-c> "+y
nnoremap <C-v> "+P

"Remaps copy from current possition to the end of line
nnoremap Y yg_

"Remaps go to marks
nnoremap gm `m
nnoremap ga `a
nnoremap gs `s

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

"Shortcuts split creation
nnoremap <leader>vs :vsp .<CR>
nnoremap <leader>hs :sp .<CR>

"Shortcuts buffers manipulation
nnoremap <leader>bb <C-^>
nnoremap <leader>bf :buffer<Space>
nnoremap <leader>bc :Bclose<CR>
nnoremap <leader>bd :bdelete<CR>

"Shortcuts buffer only
nnoremap <leader>ob :mksession! ~/session.vim<CR>:only<CR>

"Shortcuts session saving and loading
nnoremap <leader>ss :mksession! ~/session.vim<CR>
nnoremap <leader>ls :source ~/session.vim<CR>

"Shortcuts add new line and escape
nnoremap <CR> o<Esc>

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

"Shortcuts copy and delete to the end of paragraph
nnoremap y{ V}y
nnoremap d{ V}d

"Shortcuts copy, delete and select a function block
nnoremap yaf :call FunctionInteract('y')<CR>
nnoremap daf :call FunctionInteract('d')<CR>
nnoremap vaf :call FunctionInteract('')<CR>

"Shortcuts copy, delete and select an if else block
nnoremap yai :call IfElseBlockInteract('y')<CR>
nnoremap dai :call IfElseBlockInteract('d')<CR>
nnoremap vai :call IfElseBlockInteract('')<CR>

"Shortcuts copy, delete and select a while block
nnoremap yal :call WhileBlockInteract('y')<CR>
nnoremap dal :call WhileBlockInteract('d')<CR>
nnoremap val :call WhileBlockInteract('')<CR>

"Shortcuts copy, delete and select a for block
nnoremap yao :call ForBlockInteract('y')<CR>
nnoremap dao :call ForBlockInteract('d')<CR>
nnoremap vao :call ForBlockInteract('')<CR>

"Shortcuts copy, delete and select a switch case block
nnoremap yac :call SwitchCaseBlockInteract('y')<CR>
nnoremap dac :call SwitchCaseBlockInteract('d')<CR>
nnoremap vac :call SwitchCaseBlockInteract('')<CR>

"Shortcuts copy, delete and select a c/cpp function block
autocmd FileType c,cpp nnoremap <buffer> yaf :call CppFunctionBlockInteract('y')<CR>
autocmd FileType c,cpp nnoremap <buffer> daf :call CppFunctionBlockInteract('d')<CR>
autocmd FileType c,cpp nnoremap <buffer> vaf :call CppFunctionBlockInteract('')<CR>

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

function FunctionInteract(choice)
    "choice = 'y' for yanking a function block
    "choice = 'd' for deleting a function block
    "choice = '' for selecting a function block
    call search('function.*(.*)','bc')
    let l:position = line('.')
    let l:line = getline(l:position)
    let l:nextline = getline(l:position + 1)
    let l:array= split(l:line)
    let l:arrayNext= split(l:nextline)
    if l:array[-1] == '{'
        execute 'normal! $V%' . a:choice
    elseif l:arrayNext[-1] == '{'
        execute 'normal! Vj%' . a:choice
    else
        execute 'normal! V%' . a:choice
    endif
endfunction

function IfElseBlockInteract(choice)
    "choice = 'y' for yanking an if else block
    "choice = 'd' for deleting an if else block
    "choice = '' for selecting an if else block
    while 1
        call search('if.*(.*)','bc')
        if search('else','bc',line('.')) == 0
            break
        endif
    endwhile
    normal! mz
    while 1
        call search('{','c')
        normal! %
        if search('else','c',line('.') + 1) == 0
            break
        endif
    endwhile
    execute 'normal! V`z' . a:choice
endfunction

function WhileBlockInteract(choice)
    "choice = 'y' for yanking a while block
    "choice = 'd' for deleting a while block
    "choice = '' for selecting a while block
    call search('while.*(.*)','bc')
    normal! mz
    call search('{','c')
    execute 'normal! %V`z' . a:choice
endfunction

function ForBlockInteract(choice)
    "choice = 'y' for yanking a for block
    "choice = 'd' for deleting a for block
    "choice = '' for selecting a for block
    call search('for.*(.*)','bc')
    normal! mz
    call search('{','c')
    execute 'normal! %V`z' . a:choice
endfunction

function SwitchCaseBlockInteract(choice)
    "choice = 'y' for yanking a switch case block
    "choice = 'd' for deleting a switch case block
    "choice = '' for selecting a switch case block
    call search('switch.*(.*)','bc')
    normal! mz
    call search('{','c')
    execute 'normal! %V`z' . a:choice
endfunction

function CppFunctionBlockInteract(choice)
    "choice = 'y' for yanking a c/pp function block
    "choice = 'd' for deleting a c/pp function block
    "choice = '' for selecting a c/pp function block
    while 1
        call search('{','bc')
        if search('if','bc',line('.')-1) == 0 && search('else','bc',line('.')-1) == 0 && search('while','bc',line('.')-1) == 0 && search('for','bc',line('.')-1) == 0 && search('switch','bc',line('.')-1) == 0
            break
        endif
    endwhile
    let l:line = getline('.')
    let l:array = split(l:line)
    if stridx(l:array[0],'{') == 0 "If first non-blank character is {
        execute 'normal! mzkV`z%' . a:choice
    else
        execute 'normal! V%' . a:choice
    endif
endfunction
