call plug#begin('~/.vim/plugged')
" Plugin color scheme
Plug 'rakr/vim-one'
" Plugin status line theme
Plug 'vim-airline/vim-airline'
" Plugin surrounding tags and brackets editing
Plug 'tpope/vim-surround'
" Plugin closing buffer without closing window
Plug 'chrismccord/bclose.vim'
" Plugin increamental search
Plug 'vim-scripts/VisIncr'
" Plugin auto close character
Plug 'Townk/vim-autoclose'
" Plugin display color from color code
" Plug 'RRethy/vim-hexokinase'
" Plugin indent line indication
Plug 'Yggdroot/indentLine'
" Plugin highlight all occurences
Plug 'lfv89/vim-interestingwords'
" Plugin highlight all occurences under the cursor
Plug 'dominikduda/vim_current_word'
" Pluggin for code minimap
" Plug 'wfxr/minimap.vim'
" Plug 'severin-lemaignan/vim-minimap'
" Plugin for tabularize block of code
Plug 'godlygeek/tabular'
" Plugin file system explorer
Plug 'preservim/nerdtree'
" Plugin for Python syntax highlighting
Plug 'vim-python/python-syntax'

" Pligin for React .jsx file indenting and highlighting
Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'
Plug 'MaxMEllon/vim-jsx-pretty'
" Plugin for React .jsx file autocompletion
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
" Plugin auto pairs
Plug 'jiangmiao/auto-pairs'
" Plugin html files editing
Plug 'mattn/emmet-vim'
" Plugin closing html tags
Plug 'alvan/vim-closetag'
" Plugin matching tag
Plug 'Valloric/MatchTagAlways'
" Plugin React snippets
Plug 'justinj/vim-react-snippets'
" Plugin directory differences indicator
Plug 'will133/vim-dirdiff'
" Plugin auto close tag
" Plug 'sukima/xmledit'

" Plugin React snippets
" Plug 'mlaursen/vim-react-snippets'
" Plugin auto complete
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

"" Plugin php programming
" Plug 'StanAngeloff/php.vim'
"" Plugin php and python debugger
" Plug 'vim-vdebug/vdebug'
"" Plugin snipets
" Plug 'SirVer/ultisnips'
"" Plugin tab button configuration for code completion
" Plug 'ervandew/supertab'
"" Plugin code completion for c/cpp
" Plug 'xavierd/clang_complete'
"" Plugin syntax checking (replaced by ale)
" Plug 'vim-syntastic/syntastic'

" Plugin syntax checking
Plug 'dense-analysis/ale'
" Plugin commentary support
Plug 'preservim/nerdcommenter'
" Plugin latex editing
Plug 'vim-latex/vim-latex'
" Plugin latex live preview
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
" Plugin fontsize changing
Plug 'drmikehenry/vim-fontsize'
" Plugin auto complete
" Plug 'ycm-core/YouCompleteMe'
" Plugin code structure pane
Plug 'preservim/tagbar'
" Plugin project files finder
Plug 'ctrlpvim/ctrlp.vim'
" Plugin word search in all files
Plug 'mileszs/ack.vim'
" Plugin session managing
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
" Plugin git support in vim
Plug 'tpope/vim-fugitive'
" Plugin show added, removed or modified lines in git diff
Plug 'airblade/vim-gitgutter'
" Plugin c/cpp template insertion
Plug 'WolfgangMehner/c-support'
" Plugin sublime text multiple cursors
Plug 'terryma/vim-multiple-cursors'
call plug#end()

" Sets color scheme
if (has("termguicolors"))
    set termguicolors
endif
set background=dark
let g:one_allow_italics = 1
silent! colorscheme one

" Auto higlight current word under cursor color configuration
highlight link CurrentWordTwins Search
highlight link CurrentWord PMenuSel
highlight Comment term=italic ctermfg=300 guifg=#828997
highlight LineNr term=italic ctermfg=300 guifg=#828997

" Config minimap
let g:minimap_git_colors = 1
let g:minimap_highlight_range = 1
let g:minimap_git_colors = 1
let g:minimap_git_color_priority = 130
let g:minimap_auto_start = 0
let g:minimap_auto_start_win_enter = 1

" Hexokinase color code to color
let g:Hexokinase_highlighters = [ 'backgroundfull' ]

" Config python highlight
let g:python_highlight_all = 1

" Indent line indication configuration
let g:indentLine_setColors = 0
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_char = '▏'

" Toggling on jumping between if and endif
runtime macros/matchit.vim

" Debugger
packadd termdebug

" Latex live preview setup
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

" Disables beeping sounds
set noerrorbells visualbell t_vb=
if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
endif

" Syntax highlighting for .config files
autocmd BufRead,BufNewFile *.conf setf dosini

" Highlights line and row which cursor is currently in
set cursorline
set cursorcolumn

" Opens new files without having to save current file
set hidden

" Shows line number
set number

" Sets non-case-sensitive and increamental search
set smartcase
set ignorecase
set incsearch

" Sets tab size to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set smarttab
filetype indent plugin on
set omnifunc=syntaxcomplete#Complete

" Converts tabs to spaces
set autoindent
set expandtab
set smartindent
set listchars=tab:\|\
set list

" Sets split directions
set splitbelow
set splitright

" Set wrap
set wrap
set linebreak
set nolist
set showbreak=--
set breakindent
set breakindentopt=sbr

" Set select text by mouse drag to copy
set mouse=a

" Maps leader key
let mapleader               = ' '
let g:user_emmet_leader_key = ','
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}
let g:user_emmet_install_global=0
autocmd FileType html,css,js,javascript.jsx EmmetInstall

" Setup session management
let g:session_directory       = "~/.vim/session"
let g:session_autoload        = "no"
let g:session_autosave        = "no"
let g:session_command_aliases = 1

" Setup indent for html files
autocmd BufRead,BufNewFile *.html set shiftwidth=2
autocmd BufRead,BufNewFile *.xml set shiftwidth=2
autocmd BufRead,BufNewFile *.css set shiftwidth=2
let g:html_indent_script1  = "inc"
let g:html_indent_style1   = "inc"
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_autotags = "br,input,img,html,body,tbody"

" Setup Prettier for React
autocmd FileType javascript setlocal formatprg=prettier
autocmd FileType javascript.jsx setlocal formatprg=prettier
autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript
autocmd FileType html setlocal formatprg=js-beautify\ --type\ html
autocmd FileType scss setlocal formatprg=prettier\ --parser\ css
autocmd FileType css setlocal formatprg=prettier\ --parser\ css
nnoremap <F5> mzgggqG`z
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'js' : 1,
    \}
" Setup indent for html files
autocmd BufRead,BufNewFile *.js set shiftwidth=2
autocmd BufRead,BufNewFile *.jsx set shiftwidth=2
let g:closetag_filetypes = 'html,xhtml,phtml,js,jsx'
let g:closetag_xhtml_filetypes = 'xhtml,javascript.jsx,jsx'
" let g:closetag_xhtml_filetypes = 'xhtml,js,jsx'
" let g:closetag_regions = {
    " \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    " \ 'javascript.jsx': 'jsxRegion',
    " \ 'typescriptreact': 'jsxRegion,tsxRegion',
    " \ 'javascriptreact': 'jsxRegion',
    " \ }
autocmd BufNewFile,BufRead *.js set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx

" Shortcuts set syntax when opening a file
nnoremap <leader>st :set syntax=

" Shortcuts register N.O 2 paste
nnoremap <leader>pp "2p
nnoremap <leader>pP "2P

" Shortcuts register yank and paste
nnoremap 'ay "ay
nnoremap 'sy "sy
nnoremap 'ap "ap
nnoremap 'sp "sp
nnoremap 'aP "aP
nnoremap 'sP "sP

" Shortcuts minimap toggle
nnoremap <leader>mm :MinimapToggle<CR>
nnoremap <leader>ms :nohlsearch<CR>:call minimap#vim#ClearColorSearch()<CR>

" Shortcuts vimdiff on/off foe showing different between files
nnoremap <leader>vd :windo diffthis<CR>
nnoremap <leader>vf :windo diffoff<CR>

" Shortcuts session management
nnoremap <leader>ss :SaveSession<space>
nnoremap <leader>so :OpenSession<space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

" Remaps Esc
inoremap <Esc> <C-[><Esc>

" Remaps go to last non-space character of displayed line
execute "set <A-l>=\el"
nnoremap <A-l> g$
vnoremap <A-l> g$

" Map with ALT key
" Shortuts appending semi-colon to the end of line
execute "set <A-;>=\e;"
inoremap <A-;> <C-[>A;
inoremap ;<cr> <end>;<cr>
inoremap ;; <down><end>;<cr>

"<C-[><Esc>

" Map with ALT key
" Shortcuts visual to end of line
execute "set <A-v>=\ev"
nnoremap <A-v> vg_

" Map with ALT key
" Shortcuts select all lines
execute "set <A-a>=\ea"
nnoremap <A-a> ggVG

" Map with ALT key
" Shortcuts open current session in gvim
execute "set <A-g>=\eg"
nnoremap <A-g> :mksession! ~/session.vim<CR>:!gvim -S ~/session.vim<CR><CR>

" Map with ALT key
" Remaps terminal calling
execute "set <A-t>=\et"
nnoremap <A-t> <C-z>

" Map with ALT key
" Shortcuts file write and quit
execute "set <A-w>=\ew"
nnoremap <A-w> mt:w<CR>`t
execute "set <A-q>=\eq"
nnoremap <A-q> :q<CR>

" Map with ALT key
" Shortcuts open repository tree
execute "set <A-e>=\ee"
nnoremap <A-e> :e .<CR>

" Map with ALT key
" Remap visual column
execute "set <A-v>=\ev"
vnoremap <A-v> <C-v>

" Map with ALT key
" Remaps go to fist non-space character of displayed line
execute "set <A-h>=\eh"
nnoremap <A-h> g^
vnoremap <A-h> g^

" Remaps go to next block
" Map with ALT key
execute "set <A-j>=\ej"
nnoremap <A-j> }
vnoremap <A-j> }

" Remaps go to previous block
" Map with ALT key
execute "set <A-k>=\ek"
nnoremap <A-k> {
vnoremap <A-k> {

" Map with ALT key
" Remaps insert line above and to to insert mode
execute "set <A-o>=\eo"
nnoremap <A-o> o<ESC>

" Map with ALT key
" Shortcuts moving cursor in insert mode
execute "set <A-l>=\el"
inoremap <A-l> <C-o>l
execute "set <A-h>=\eh"
inoremap <A-h> <C-o>h
execute "set <A-j>=\ej"
inoremap <A-j> <C-o>j
execute "set <A-k>=\ek"
inoremap <A-k> <C-o>k
execute "set <A-L>=\eL"
inoremap <A-L> <C-o>w
execute "set <A-H>=\eH"
inoremap <A-H> <C-o>b
execute "set <A-J>=\eJ"
inoremap <A-J> <C-o><C-e>
execute "set <A-K>=\eK"
inoremap <A-K> <C-o><C-y>

" Map with ALT key
" Shortcuts changing and merging and deleting in insert mode
execute "set <A-x>=\ex"
inoremap <A-x> <C-o>X
execute "set <A-X>=\eX"
inoremap <A-X> <C-o>x
execute "set <A-c>=\ec"
inoremap <A-c> <C-o>:call ChangeWordBeforeCursor()<CR>
execute "set <A-C>=\eC"
inoremap <A-C> <C-o>:call ChangeWordAfterCursor()<CR>
execute "set <A-u>=\eu"
inoremap <A-u> <C-o>u
execute "set <A-o>=\eo"
inoremap <A-o> <C-o>o
execute "set <A-O>=\eO"
inoremap <A-O> <C-o>O
execute "set <A-d>=\ed"
inoremap <A-d> <C-o>dd
execute "set <A-m>=\em"
inoremap <A-m> <C-o>k<C-o>J

" Map with ALT key
" Shorcuts append space to end of line in insert mode
execute "set <A-a>=\ea"
inoremap <A-a> <C-o>A

" Map with ALT key
" Shorcuts replacing a character insert mode
execute "set <A-r>=\er"
inoremap <A-r> <C-o>r

" Map with ALT key
" Remaps manual page openning
execute "set <A-i>=\ei"
nnoremap <A-i> K

" Map with ALT key
" Remaps manual page openning
execute "set <A-i>=\ei"
nnoremap <A-i> K

" Map with ALT key
" Remaps manual page openning
execute "set <A-c>=\ec"
nnoremap <A-c> cc<ESC>

" Remaps line merge and split
nnoremap <leader>me J
nnoremap <leader>um i<CR><ESC>

" Remaps vertical line scroll
nnoremap J <C-e>
nnoremap K <C-y>

" Remaps scroll downwards
nnoremap { <C-d>
vnoremap { <C-d>

" Remaps scroll upwards
nnoremap } <C-u>
vnoremap } <C-u>

" Remaps go to next displayed line
nnoremap j gj
vnoremap j gj

" Remaps go to previous displayed line
nnoremap k gk
vnoremap k gk

" Remaps tab in and out
nnoremap <Tab> I<Tab><Esc>
nnoremap <S-Tab> I<BS><Esc>
nnoremap <leader>rt :%retab!<CR>

" Remaps O to insert line above
nnoremap <C-o> O<Esc>

" Remaps l and h to jump to the beginning of next and previous word
nnoremap h b
vnoremap h b
nnoremap l w
vnoremap l w

" Remaps l and h to jump to the beginning of next and previous word
nnoremap H ge
vnoremap H ge
nnoremap L e
vnoremap L e

" Remaps L and H to move cursor left and right character
nnoremap <C-h> h
vnoremap <C-h> h
nnoremap <C-l> l
vnoremap <C-l> l

" Remaps copy a word
nnoremap yl yw
nnoremap yh yb

" Remaps change a word
nnoremap cl cw
nnoremap ch cb

" Remaps change words
nnoremap c2l c2w
nnoremap c3l c3w
nnoremap c4l c4w
nnoremap c5l c5w
nnoremap c2h c2b
nnoremap c3h c3b
nnoremap c4h c4b
nnoremap c5h c5b

" Remaps delete a word
nnoremap dh db
nnoremap dl dw

" Remaps delete words
nnoremap d2l d2w
nnoremap d3l d3w
nnoremap d4l d4w
nnoremap d5l d5w
nnoremap d2h d2b
nnoremap d3h d3b
nnoremap d4h d4b
nnoremap d5h d5b

" Map with ALT key
" Remaps go to next occurence
execute "set <A-/>=\e/"
nnoremap <A-/> *

" Remaps redo
nnoremap U <C-r>

" Remaps copy and paste block of code to clipboard
vnoremap <C-c> "+y
nnoremap <C-v> "+P
inoremap <C-v> <C-o>"+P

" Remaps copy from current possition to the end of line
nnoremap Y yg_

" Remaps go to marks
nnoremap gm `m
nnoremap ga `a
nnoremap gs `s
nnoremap gw `w
nnoremap gf `z
nnoremap gd mzgd

" Remaps split navigation
nnoremap <leader>hh <C-w>h
nnoremap <leader>jj <C-w>j
nnoremap <leader>kk <C-w>k
nnoremap <leader>ll <C-w>l

" Remaps split resize
nnoremap <leader>se <C-w>=
nnoremap <leader>sl <C-w>10>
nnoremap <leader>sh <C-w>10<
nnoremap <leader>sj <C-w>5+
nnoremap <leader>sk <C-w>5-

" Remaps split arrangement
nnoremap <leader>mh <C-w>H
nnoremap <leader>mj <C-w>J
nnoremap <leader>mk <C-w>K
nnoremap <leader>ml <C-w>L

" Remaps git command
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gd :Gdiffsplit<CR>
nnoremap <leader>gl :Git log --name-status HEAD@{1}..HEAD@{0}
nmap gj ]c
nmap gk [c

" Shortcuts go to next indented line
nnoremap gH :call NextIndent(0, 0, 0, 1, 1)<CR>
nnoremap gL :call NextIndent(0, 1, 0, 1, 1)<CR>
nnoremap gh :call NextIndent(0, 0, 1, 1, 1)<CR>
nnoremap gl :call NextIndent(0, 1, 1, 1, 1)<CR>
vnoremap gH :call NextIndent(0, 0, 0, 1, 1)<CR>
vnoremap gL :call NextIndent(0, 1, 0, 1, 1)<CR>
vnoremap gh :call NextIndent(0, 0, 1, 1, 1)<CR>
vnoremap gl :call NextIndent(0, 1, 1, 1, 1)<CR>

" Shortcuts toggle relative number
nnoremap <leader>rn :set relativenumber!<CR>

" Shortcuts split creation
nnoremap <leader>vs :vsp .<CR>
nnoremap <leader>hs :sp .<CR>

" Shortcuts buffers manipulation
nnoremap <leader>bb <C-^>
nnoremap <leader>bf :buffer<Space>
nnoremap <leader>bc :Bclose<CR>
nnoremap <leader>bd :bdelete<CR>

" Shortcuts buffer only and undo
nnoremap <leader>bo :mksession! ~/session.vim<CR>:only<CR>
nnoremap <leader>bu :source ~/session.vim<CR>

" Shortcuts VIMRC summoning and sourcing
nnoremap <leader>ev :vsp $MYVIMRC<CR><c-w>L
nnoremap <leader>sv :w <bar> :source $MYVIMRC <bar> :doautocmd BufRead<CR>

" Shortcuts plugins installation
nnoremap <leader>pi :PlugInstall<CR>

" Shortcuts auto indent
nnoremap <leader>== mqgg=G`q

" Shortcuts merge blocks
nnoremap <leader>mb :5,8del <bar> let l=split(@","/n") <bar> ,s/$/\=remove(l,0)/g

" Shortcuts replace all occurrences
nnoremap <leader>ra :%s//gc<Left><Left><Left>

" Shortcuts replace all occurrences in one line
nnoremap <leader>rl :s//g<Left><Left>

" Shortcuts replace all occurrences in a block of code
nnoremap <leader>rb :.,s//g<Left><Left><Left><Left>
vnoremap <leader>rb :s//g<Left><Left>

" Shortcuts replace with pattern
nnoremap <leader>rp :s/Copyright \zs2007\ze All Rights Reserved/2008/

" Shortcuts open Tagbar
nnoremap <leader>tb :Tagbar<CR>

" Shorcuts tabularize a block of code
vnoremap <leader>ta :Tabularize /

" Shortcuts copy and delete to the end of paragraph
nnoremap y{ V}y
nnoremap d{ V}d

" Shortcuts fold rule
nnoremap <leader>fs :set foldmethod=syntax<CR>
nnoremap <leader>fi :set foldmethod=indent<CR>

" Shortcuts fold enable toggle
nnoremap <leader>fe :set nofoldenable!<CR>

" Shortcuts fold open and close
nnoremap <leader>fo za

" Shortcuts fold open and close all
nnoremap <leader>fa zM
nnoremap <leader>fu zR

" Shortcuts copy, delete and select an if else block
nnoremap yai :call IfElseBlockInteract('y')<CR>
nnoremap dai :call IfElseBlockInteract('d')<CR>
nnoremap vai :call IfElseBlockInteract('')<CR>

" Shortcuts copy, delete and select a while block
nnoremap yal :call WhileBlockInteract('y')<CR>
nnoremap dal :call WhileBlockInteract('d')<CR>
nnoremap val :call WhileBlockInteract('')<CR>

" Shortcuts copy, delete and select a for block
nnoremap yao :call ForBlockInteract('y')<CR>
nnoremap dao :call ForBlockInteract('d')<CR>
nnoremap vao :call ForBlockInteract('')<CR>

" Shortcuts copy, delete and select a switch case block
nnoremap yac :call SwitchCaseBlockInteract('y')<CR>
nnoremap dac :call SwitchCaseBlockInteract('d')<CR>
nnoremap vac :call SwitchCaseBlockInteract('')<CR>

" Shortcuts copy, delete and select a c/cpp function block
autocmd FileType c,cpp,java nnoremap <buffer> yaf :call FunctionBlockInteractCppAndJava('y')<CR>
autocmd FileType c,cpp,java nnoremap <buffer> daf :call FunctionBlockInteractCppAndJava('d')<CR>
autocmd FileType c,cpp,java nnoremap <buffer> vaf :call FunctionBlockInteractCppAndJava('')<CR>

" Shortcuts copy, delete and select a c/cpp function block
autocmd FileType python nnoremap <buffer> yaf :call FunctionBlockInteractPython('y')<CR>
autocmd FileType python nnoremap <buffer> daf :call FunctionBlockInteractPython('d')<CR>
autocmd FileType python nnoremap <buffer> vaf :call FunctionBlockInteractPython('')<CR>

" Shortcuts copy, delete and select a c/cpp function block
autocmd FileType vim nnoremap <buffer> yaf :call FunctionBlockInteractVim('y')<CR>
autocmd FileType vim nnoremap <buffer> daf :call FunctionBlockInteractVim('d')<CR>
autocmd FileType vim nnoremap <buffer> vaf :call FunctionBlockInteractVim('')<CR>

" Shortcuts go to the start of function
autocmd FileType c,cpp,java nnoremap <buffer> gfs :call FunctionBlockInteractCppAndJava('fs')<CR>
autocmd FileType python nnoremap <buffer> gfs :call FunctionBlockInteractPython('fs')<CR>
autocmd FileType vim* nnoremap <buffer> gfs :call FunctionBlockInteractVim('fs')<CR>

" Shortcuts go to the end of function
autocmd FileType c,cpp,java nnoremap <buffer> gfe :call FunctionBlockInteractCppAndJava('fe')<CR>
autocmd FileType python nnoremap <buffer> gfe :call FunctionBlockInteractPython('fe')<CR>
autocmd FileType vim* nnoremap <buffer> gfe :call FunctionBlockInteractVim('fe')<CR>

" Shortcuts go to function definition
autocmd FileType c,cpp,java nnoremap <buffer> gfd :call  GotoFunctionDefinitionCppAndJava()<CR>
autocmd FileType python nnoremap <buffer> gfd :call  GotoFunctionDefinitionPython()<CR>
autocmd FileType vim* nnoremap <buffer> gfd :call  GotoFunctionDefinitionVim()<CR>

" Shortcuts fold to current level
nnoremap  <leader>fl :let &l:fdl=indent('.')/&shiftwidth - 1<CR>
" Automatically set syntax highlighting when open shell scripts
autocmd FileType sh :set syntax=sh

" Automatically delete trailing white spaces before saving a file
autocmd BufWritePre * :call StripTrailingWhitespace()

" Automatically delete trailing white spaces before saving a file
autocmd BufWritePre * :call TrimTrailingLines()

" Automatically insert skeleton when create new .cpp files
autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp

" Automatically change directory to new openned file
autocmd BufEnter * silent! :lcd%:p:h

" Function to delete trailing white spaces
function StripTrailingWhitespace()
    if !&binary && &filetype != 'diff'
        normal! mz
        normal! Hmy
        %s/\s\+$//e
        normal! 'yz<CR>
        normal! `z
    endif
endfunction

" Function to delete empty lines at the end of file
function TrimTrailingLines()
    let lastLine = line('$')
    let lastNonblankLine = prevnonblank(lastLine)
    if lastLine > 0 && lastNonblankLine != lastLine
        silent! execute lastNonblankLine + 1 . ',$delete _'
    endif
endfunction

" Function to interact block of codes
function IfElseBlockInteract(choice)
    " choice = 'y' for yanking an if else block
    " choice = 'd' for deleting an if else block
    " choice = '' for selecting an if else block
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

" Function to interact block of codes
function WhileBlockInteract(choice)
    " choice = 'y' for yanking a while block
    " choice = 'd' for deleting a while block
    " choice = '' for selecting a while block
    call search('while.*(.*)','bc')
    normal! mz
    call search('{','c')
    execute 'normal! %V`z' . a:choice
endfunction

" Function to interact block of codes
function ForBlockInteract(choice)
    " choice = 'y' for yanking a for block
    " choice = 'd' for deleting a for block
    " choice = '' for selecting a for block
    call search('for.*(.*)','bc')
    normal! mz
    call search('{','c')
    execute 'normal! %V`z' . a:choice
endfunction

" Function to interact block of codes
function SwitchCaseBlockInteract(choice)
    " choice = 'y' for yanking a switch case block
    " choice = 'd' for deleting a switch case block
    " choice = '' for selecting a switch case block
    call search('switch.*(.*)','bc')
    normal! mz
    call search('{','c')
    execute 'normal! %V`z' . a:choice
endfunction

" Function to interact block of codes
function FunctionBlockInteractCppAndJava(choice)
    " choice = 'y' for yanking a c/cpp/java function block
    " choice = 'd' for deleting a c/cpp/java function block
    " choice = '' for selecting a c/cpp/java function block
    " choice = 'fs' for jumping to start of a c/cpp/java function block
    " choice = 'fe' for jumping to end of a c/cpp/java function block
    let l:currentPos = getpos('.')
    let l:NO_skipped = 0
    let l:n = search("\\<[0-9a-zA-Z_]*\\>[.:~ ]*\\<[0-9a-zA-Z_]*\\>[^(]*([0-9a-zA-Z_ ,:*&\\[\\]\\n]*)\\s*\\n*\\s*{", 'bc')
    while l:n > 0 && l:NO_skipped < 20
        if eval(search("\\<else\\>\\s*\\<if\\>", 'cn', line('.')) != 0)
            let l:n = search("\\<[0-9a-zA-Z_]*\\>[.:~ ]*\\<[0-9a-zA-Z_]*\\>[^(]*([^)]*)\\s*\\n*\\s*{", 'b')
    " normal! %mz%
            let l:NO_skipped += 1
            continue
        endif
        break
    endwhile
    let l:functionPos   = getpos('.')
    let l:functionStart = search(')', 'n')
    call search('{')
    normal! %
    let l:functionEnd   = getpos('.')
    call setpos('.', l:functionPos)
    if l:currentPos[1] != l:functionStart && l:currentPos[1] != l:functionEnd[1]
        call setpos("'z", l:currentPos)
    endif
    if a:choice == 'fs'
        call search(')')
        return
    elseif a:choice == 'fe'
        call search('{')
        normal! %
        return
    else
        normal! mz
        call search('{')
        normal! %
        " Try to include empty line below
        call search("^$", '', line('.')+1)
        execute 'normal! V`z' . a:choice
    endif
endfunction

" Function to interact block of codes
function FunctionBlockInteractPython(choice)
    " choice = 'y' for yanking a python function block
    " choice = 'd' for deleting a python function block
    " choice = '' for selecting a python function block
    " choice = 'fs' for jumping to start of a python function block
    " choice = 'fe' for jumping to end of a python function block
    let l:currentPos = getpos('.')
    call search("\\<def\\>\\s*\\<[0-9a-zA-Z_]*\\>\\s*([^)]*)\\s*:", 'bc')
    let l:functionStart = search(')', 'n')
    let l:functionEnd   = NextIndent(1,1,0,1,0)
    if l:currentPos[1] != l:functionStart && l:currentPos[1] != l:functionEnd
        call setpos("'z", l:currentPos)
    endif
    if a:choice == 'fs'
        call search(')')
        return
    elseif a:choice == 'fe'
        call NextIndent(1,1,0,1,1)
        return
    else
        normal! mz
        call NextIndent(1,1,0,1,1)
        execute 'normal! V`z' . a:choice
    endif
endfunction

" Function to interact block of codes
function FunctionBlockInteractVim(choice)
    " choice = 'y' for yanking a vim function block
    " choice = 'd' for deleting a vim function block
    " choice = '' for selecting a vim function block
    " choice = 'fs' for jumping to start of a vim function block
    " choice = 'fe' for jumping to end of a vim function block
    normal! mz
    let l:functionStart = search("\\<function\\>\\s*\\<[0-9a-zA-Z_]*\\>\\s*([^)]*)", 'bc')
    if a:choice == 'fs'
        call search(")")
        return
    elseif a:choice == 'fe'
        call search("\\<endfunc")
        return
    else
        normal! mz
        call search("\\<endfunc")
        " Try to include empty line below
        call search("^$", '', line('.')+1)
        execute 'normal! V`z' . a:choice
    endif
endfunction

function GotoFunctionDefinitionCppAndJava()
    let l:currentPos = getpos('.')
    let n = search("\\<".expand("<cword>")."\\>[^(]*([^)]*)\\s*\\n*\\s*{")
    let l:functionStart = getpos('.')
    if l:currentPos[1] != l:functionStart[1]
        call setpos("'z", l:currentPos)
    endif
endfunction

function GotoFunctionDefinitionPython()
    let l:currentPos = getpos('.')
    let n = search("\\<".expand("<cword>")."\\>[^(]*([^)]*)\\s*:")
    let l:functionStart = getpos('.')
    if l:currentPos[1] != l:functionStart[1]
        call setpos("'z", l:currentPos)
    endif
endfunction

function GotoFunctionDefinitionVim()
    let l:currentPos = getpos('.')
    let n = search("function\\s*\\<".expand("<cword>")."\\>[^(]*([^)]*)")
    let l:functionStart = getpos('.')
    if l:currentPos[1] != l:functionStart[1]
        call setpos("'z", l:currentPos)
    endif
endfunction

function IndentLevel(lnum)
    return indent(a:lnum) / &shiftwidth
endfunction

function NextNonBlankLine(lnum)
    let numlines = line('$')
    let current = a:lnum + 1

    while current <= numlines
        if getline(current) =~? '\v\S'
            return current
        endif

        let current += 1
    endwhile

    return -2
endfunction

function GetPotionFold(lnum)
    if getline(a:lnum) =~? '\v^\s*$'
        return '-1'
    endif

    let this_indent = IndentLevel(a:lnum)
    let next_indent = IndentLevel(NextNonBlankLine(a:lnum))

    if next_indent == this_indent
        return this_indent
    elseif next_indent < this_indent
        return this_indent
    elseif next_indent > this_indent
        return '>' . next_indent
    endif
endfunction

function SearchWithSkip(pattern, flags, stopline, timeout, skip)
"
" Returns true if a match is found for {pattern}, but ignores matches
" where {skip} evaluates to false. This allows you to do nifty things
" like, say, only matching outside comments, only on odd-numbered lines,
" or whatever else you like.
"
" Mimics the built-in search() function, but adds a {skip} expression
" like that available in searchpair() and searchpairpos().
" (See the Vim help on search() for details of the other parameters.)
"
    " Note the current position, so that if there are no unskipped
    " matches, the cursor can be restored to this location.
    "
    let l:matchpos = getpos('.')

    " Loop as long as {pattern} continues to be found.
    "
    while search(a:pattern, a:flags, a:stopline, a:timeout) > 0

        " If {skip} is true, ignore this match and continue searching.
        "
        if eval(a:skip)
            continue
        endif

        " If we get here, {pattern} was found and {skip} is false,
        " so this is a match we don't want to ignore. Update the
        " match position and stop searching.
        "
        let l:matchpos = getpos('.')
        break

    endwhile

    " Jump to the position of the unskipped match, or to the original
    " position if there wasn't one.
    "
    call setpos('.', l:matchpos)

endfunction

function SearchOutside(synName, pattern)
"
" Searches for the specified pattern, but skips matches that
" exist within the specified syntax region.
"
    call SearchWithSkip(a:pattern, '', '', '',
        \ 'synIDattr(synID(line("."), col("."), 0), "name") =~? "' . a:synName . '"' )

endfunction

function NextIndent(exclusive, fwd, lowerlevel, skipblanks, movecursor)
    let l:line = line('.')
    let column = col('.')
    let lastline = line('$')
    let indent = indent(l:line)
    let stepvalue = a:fwd ? 1 : -1
    while (l:line > 0 && l:line <= lastline)
        let l:line = l:line + stepvalue
        if ( a:lowerlevel == 0 && indent(l:line) <= indent ||
                    \ a:lowerlevel && indent(l:line) < indent)
            if (! a:skipblanks || strlen(getline(l:line)) > 0)
                if (a:exclusive)
                    let l:line = l:line - stepvalue
                endif
                normal! mw
                if (a:movecursor)
                    execute l:line
                    normal! ^
                endif
                return l:line
            endif
        endif
    endwhile
endfunction

function Getchar(right)
"
" Function to get character right or left the cursor
" Let right = 0 to get charater under the cursor
"
    return strcharpart(strpart(getline('.'), col('.') - 1 + a:right), 0, 1)
endfunction

function IsAlphabet(char)
"
"Function to check if a character was an alphabet letter
"
    return a:char >= 'a' && a:char <= 'b' || a:char >= 'A' && a:char <= 'Z'
endfunction

function ChangeWordAfterCursor()
    let l:cursor = Getchar(0)
    let l:left   = Getchar(-1)
    let l:right  = Getchar(1)
    if ( l:cursor == ' ' || IsAlphabet(l:cursor) && l:left == ' ')
        normal daw
    elseif ( l:right == '' )
        return
    else
        normal wdaw
    endif
endfunction

function ChangeWordBeforeCursor()
  let l:cursor = Getchar(0)
  echo l:cursor
  if ( l:cursor == ' ' )
    normal bdaw
  else
    normal daw
  endif
endfunction

vnoremap <silent> [l <Esc>:call NextIndent(0, 0, 0, 1)<CR>m'gv''
vnoremap <silent> ]l <Esc>:call NextIndent(0, 1, 0, 1)<CR>m'gv''
vnoremap <silent> [L <Esc>:call NextIndent(0, 0, 1, 1)<CR>m'gv''
vnoremap <silent> ]L <Esc>:call NextIndent(0, 1, 1, 1)<CR>m'gv''
onoremap <silent> [l :call NextIndent(0, 0, 0, 1)<CR>
onoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<CR>
onoremap <silent> [L :call NextIndent(1, 0, 1, 1)<CR>
onoremap <silent> ]L :call NextIndent(1, 1, 1, 1)<CR>

onoremap <silent> ]k :g/3D/s/^\s*\\zs\(\w\)/# \1/
" iabbrev </ </<C-X><C-O>
" inoremap <buffer> > ></<C-x><C-o><C-y><C-o>%<CR><C-o>O
