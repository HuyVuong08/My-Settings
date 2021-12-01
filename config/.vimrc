call plug#begin('~/.vim/plugged')
"Plugin color scheme
Plug 'rakr/vim-one'
"Plugin status line theme
Plug 'vim-airline/vim-airline'
"Plugin surrounding tags and brackets editing
Plug 'tpope/vim-surround'
"Plugin closing buffer without closing window
Plug 'chrismccord/bclose.vim'
"Plugin increamental search
Plug 'vim-scripts/VisIncr'
"Plugin auto close character
Plug 'Townk/vim-autoclose'
"Plugin display color from color code
Plug 'RRethy/vim-hexokinase'
"Plugin indent line indication
Plug 'Yggdroot/indentLine'
"Plugin highlight all occurences
Plug 'lfv89/vim-interestingwords'
"Plugin highlight all occurences under the cursor
Plug 'dominikduda/vim_current_word'

"Pluggin for code minimap
Plug 'wfxr/minimap.vim'
"Plug 'severin-lemaignan/vim-minimap'

"Plugin for tabularize block of code
Plug 'godlygeek/tabular'

"Plugin html files editing
"Plug 'mattn/emmet-vim'
""Plugin php programming
"Plug 'StanAngeloff/php.vim'
""Plugin php and python debugger
"Plug 'vim-vdebug/vdebug'
"Plugin file system explorer
Plug 'preservim/nerdtree'
""Plugin snipets
"Plug 'SirVer/ultisnips'
""Plugin tab button configuration for code completion
"Plug 'ervandew/supertab'
""Plugin code completion for c/cpp
"Plug 'xavierd/clang_complete'
""Plugin syntax checking (replaced by ale)
"Plug 'vim-syntastic/syntastic'

"Plugin syntax checking
Plug 'dense-analysis/ale'
"Plugin commentary support
Plug 'preservim/nerdcommenter'
"Plugin latex editing
Plug 'vim-latex/vim-latex'
"Plugin latex live preview
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
"Plugin fontsize changing
Plug 'drmikehenry/vim-fontsize'
"Plugin auto complete
"Plug 'ycm-core/YouCompleteMe'
"Plugin code structure pane
Plug 'preservim/tagbar'
"Plugin project files finder
Plug 'ctrlpvim/ctrlp.vim'
"Plugin word search in all files
Plug 'mileszs/ack.vim'
"Plugin session managing
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
"Plugin git support in vim
Plug 'tpope/vim-fugitive'
"Plugin show added, removed or modified lines in git diff
Plug 'airblade/vim-gitgutter'
"Plugin c/cpp template insertion
Plug 'WolfgangMehner/c-support'
"Plugin sublime text multiple cursors
Plug 'terryma/vim-multiple-cursors'
call plug#end()

"Sets color scheme
if (has("termguicolors"))
    set termguicolors
endif
set background=dark
let g:one_allow_italics = 1
silent! colorscheme one

"Auto higlight current word under cursor color configuration
highlight link CurrentWordTwins Search
highlight link CurrentWord PMenuSel
highlight Comment term=italic ctermfg=300 guifg=#828997
highlight LineNr term=italic ctermfg=300 guifg=#828997

"Config minimap
let g:minimap_git_colors = 1
let g:minimap_highlight_range = 1
let g:minimap_git_colors = 1
let g:minimap_git_color_priority = 130
let g:minimap_auto_start = 0
let g:minimap_auto_start_win_enter = 1


"Hexokinase color code to color
let g:Hexokinase_highlighters = [ 'backgroundfull' ]

"Indent line indication configuration
let g:indentLine_setColors = 0
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_char = '▏'

"Toggling on jumping between if and endif
runtime macros/matchit.vim

"Debugger
packadd termdebug

"Latex live preview setup
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'vprerex'
let g:Tex_DefaultTargetFormat='pdf'

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
set listchars=tab:\|\
set list

"Sets split directions
set splitbelow
set splitright

"Set wrap
set wrap
set linebreak
set nolist
set showbreak=--

"Maps leader key
let mapleader=' '
let g:user_emmet_leader_key=','

"Session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

"Shortcuts minimap toggle
nnoremap <leader>mm :MinimapToggle<CR>
nnoremap <leader>ms :nohlsearch<CR>:call minimap#vim#ClearColorSearch()<CR>

"Shortcuts vimdiff on/off foe showing different between files
nnoremap <leader>vd :windo diffthis<CR>
nnoremap <leader>vf :windo diffoff<CR>

"Shortcuts session management
nnoremap <leader>ss :SaveSession<space>
nnoremap <leader>so :OpenSession<space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"Remaps Esc
inoremap <Esc> <Esc><Esc><Esc>

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
nnoremap <A-w> mt:w<CR>`t
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
nnoremap <A-o> o<ESC>

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
nnoremap <leader>me J
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
nnoremap <C-o> O<Esc>

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
nnoremap gf `f

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

"Remaps git command
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gd :Gdiffsplit<CR>
nmap gj ]c
nmap gk [c

"Shortcuts toggle relative number
nnoremap <leader>rn :set relativenumber!<CR>

"Shortcuts split creation
nnoremap <leader>vs :vsp .<CR>
nnoremap <leader>hs :sp .<CR>

"Shortcuts buffers manipulation
nnoremap <leader>bb <C-^>
nnoremap <leader>bf :buffer<Space>
nnoremap <leader>bc :Bclose<CR>
nnoremap <leader>bd :bdelete<CR>

"Shortcuts buffer only and undo
nnoremap <leader>bo :mksession! ~/session.vim<CR>:only<CR>
nnoremap <leader>bu :source ~/session.vim<CR>

"Shortcuts VIMRC summoning and sourcing
nnoremap <leader>ev :vsp $MYVIMRC<CR><c-w>L
nnoremap <leader>sv :w <bar> :source $MYVIMRC <bar> :doautocmd BufRead<CR>

"Shortcuts plugins installation
nnoremap <leader>pi :PlugInstall<CR>

"Shortcuts auto indent
nnoremap <leader>== gg=G``

"Shortcuts merge blocks
nnoremap <leader>mb :5,8del <bar> let l=split(@","/n") <bar> ,s/$/\=remove(l,0)/g

"Shortcuts replace all occurrences
nnoremap <leader>ra :%s//gc<Left><Left><Left>

"Shortcuts replace all occurrences in one line
nnoremap <leader>rl :s//g<Left><Left>

"Shortcuts replace all occurrences in a block of code
nnoremap <leader>rb :.,s//g<Left><Left><Left><Left>
vnoremap <leader>rb :s//g<Left><Left>

"Shortcuts replace with pattern
nnoremap <leader>rp :s/Copyright \zs2007\ze All Rights Reserved/2008/

"Shortcuts open Tagbar
nnoremap <leader>tb :Tagbar<CR>

"Shortcuts copy and delete to the end of paragraph
nnoremap y{ V}y
nnoremap d{ V}d

"Shortcuts copy, delete and select a function block
nnoremap yaf :call FunctionBlockInteract('y')<CR>
nnoremap daf :call FunctionBlockInteract('d')<CR>
nnoremap vaf :call FunctionBlockInteract('')<CR>

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

"Shortduts fold rule
nnoremap <leader>fs :set foldmethod=syntax<CR>
nnoremap <leader>fi :set foldmethod=indent<CR>

"Shortcuts fold enable toggle
nnoremap <leader>fe :set nofoldenable!<CR>

"Shortcuts fold open and close
nnoremap <leader>fo za

"Shortcuts fold open and close all
nnoremap <leader>fa zM
nnoremap <leader>fu zR

"Shortcuts copy, delete and select a c/cpp function block
autocmd FileType c,cpp nnoremap <buffer> yaf :call CppFunctionBlockInteract('y')<CR>
autocmd FileType c,cpp nnoremap <buffer> daf :call CppFunctionBlockInteract('d')<CR>
autocmd FileType c,cpp nnoremap <buffer> vaf :call CppFunctionBlockInteract('')<CR>

"Automatically set syntax highlighting when open shell scripts
autocmd FileType sh :set syn=sh

"Automatically delete trailing white spaces before saving a file
autocmd BufWritePre * :call StripTrailingWhitespace()

"Automatically delete trailing white spaces before saving a file
autocmd BufWritePre * :call TrimTrailingLines()

"Automatically insert skeleton when create new .cpp files
autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp

"Automatically change directory to new openned file
autocmd BufEnter * silent! :lcd%:p:h

"Function to delete trailing white spaces
function StripTrailingWhitespace()
    if !&binary && &filetype != 'diff'
        normal! mz
        normal! Hmy
        %s/\s\+$//e
        normal! 'yz<CR>
        normal! `z
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

"Function to interact block of codes
function FunctionBlockInteract(choice)
    "choice = 'y' for yanking a function block
    "choice = 'd' for deleting a function block
    "choice = '' for selecting a function block
    call search('function.*(.*)','bc')
    normal! mz
    if search('{','c',line('.') + 1) != 0
        execute 'normal! %V`z' . a:choice
    else
        call search('endfunc','c')
        execute 'normal! V`z' . a:choice
    endif
endfunction

"Function to interact block of codes
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

"Function to interact block of codes
function WhileBlockInteract(choice)
    "choice = 'y' for yanking a while block
    "choice = 'd' for deleting a while block
    "choice = '' for selecting a while block
    call search('while.*(.*)','bc')
    normal! mz
    call search('{','c')
    execute 'normal! %V`z' . a:choice
endfunction

"Function to interact block of codes
function ForBlockInteract(choice)
    "choice = 'y' for yanking a for block
    "choice = 'd' for deleting a for block
    "choice = '' for selecting a for block
    call search('for.*(.*)','bc')
    normal! mz
    call search('{','c')
    execute 'normal! %V`z' . a:choice
endfunction

"Function to interact block of codes
function SwitchCaseBlockInteract(choice)
    "choice = 'y' for yanking a switch case block
    "choice = 'd' for deleting a switch case block
    "choice = '' for selecting a switch case block
    call search('switch.*(.*)','bc')
    normal! mz
    call search('{','c')
    execute 'normal! %V`z' . a:choice
endfunction

"Function to interact block of codes
function CppFunctionBlockInteract(choice)
    "choice = 'y' for yanking a c/pp function block
    "choice = 'd' for deleting a c/pp function block
    "choice = '' for selecting a c/pp function block
    while 1
        "Go backward to the function's curly braces '{'. Skip '{' of blocks such as if, esle, while, for, switch
        call search('{','bc')
        if search('if','bc',line('.')-1) == 0 && search('else','bc',line('.')-1) == 0 && search('while','bc',line('.')-1) == 0 && search('for','bc',line('.')-1) == 0 && search('switch','bc',line('.')-1) == 0
            break
        endif
    endwhile
    normal! %mz%
    let l:posOfFuncName = line('.')
    if stridx(split(getline('.'))[0],'{') "Curly brace '{' in the same line with function name
        execute 'normal! V%' . a:choice
        return
    endif
    while 1
        "Go backward line by line to the funciton name. Skip commented or blank lines
        let l:posOfFuncName -= 1
        if len(split(getline(l:posOfFuncName))) == 0
            let l:posOfFuncName -= 1
        endif
        if stridx(split(getline(l:posOfFuncName))[0],'//') != 0
            break
        endif
    endwhile
    execute 'normal! ' . l:posOfFuncName . 'ggV`z' . a:choice
endfunction
