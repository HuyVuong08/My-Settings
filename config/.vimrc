call plug#begin('~/.vim/plugged')
" Plugin color scheme
Plug 'rakr/vim-one'
" Plugin status line theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plugin surrounding tags and brackets editing
Plug 'tpope/vim-surround'
" Plugin closing buffer without closing window
Plug 'chrismccord/bclose.vim'
" Plugin increamental search
Plug 'vim-scripts/VisIncr'
" Plugin auto close character
Plug 'Townk/vim-autoclose'
" Plugin display color from color code
Plug 'RRethy/vim-hexokinase'
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
"Plugin for Python syntax highlighting
Plug 'tpope/vim-sensible'

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
" Plug fuzzy search
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'
" Plug auto import in javascript
Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
" Plug split long lines
Plug 'AndrewRadev/splitjoin.vim'
" Plug vim jsx
Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'
" Plug Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug command-line mode mappings
Plug 'vim-utils/vim-husk'
" Plug fancy start screen for vim
Plug 'mhinz/vim-startify'

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

" " Plug wildmenu
" if has('nvim')
"   function! UpdateRemotePlugins(...)
"     " Needed to refresh runtime files
"     let &rtp=&rtp
"     UpdateRemotePlugins
"   endfunction
"   Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
" else
"   Plug 'gelguy/wilder.nvim'
"   " To use Python remote plugin features in Vim, can be skipped
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif

" Plugin impair checking
Plug 'tpope/vim-unimpaired'
" Plugin syntax checking (replaced by ale)
" Plug 'dense-analysis/ale'
" Plugin commentary support
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-commentary'
" Plugin latex editing
Plug 'vim-latex/vim-latex'
" Plugin latex live preview
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
" Plugin fontsize changing
Plug 'drmikehenry/vim-fontsize'
" Plugin auto complete (replaced by coc)
" Plug 'ycm-core/YouCompleteMe'
" Plugin code structure pane
Plug 'preservim/tagbar'
" Plugin project files finder
" Replaced by FZF
" Plug 'ctrlpvim/ctrlp.vim'
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
" set term=screen-256color
set background=dark
let g:one_allow_italics = 1
" syntax on
silent! colorscheme one

" Make triangle symbol in vim airline
" let g:airline_theme = 'bubblegum'
let g:airline_theme = 'onedark'
let g:airline_powerline_fonts = 1
au User AirlineAfterInit,AirlineAfterTheme call FixSplitColours()
fun! FixSplitColours()
    let l:theme = get(g:, 'airline_theme', g:colors_name)
    let l:termColour = g:airline#themes#{l:theme}#palette['inactive']['airline_a'][3]
    " exec 'hi VertSplit ctermfg=' . l:termColour . ' ctermbg=' . l:termColour
    exec 'hi StatusLine ctermfg=' . l:termColour
    exec 'hi StatusLineNC ctermfg=' . l:termColour
endfun

" if !has("gui_running")
    " au VimEnter * AirlineToggle
" endif

" Set cursor type to steady Block and steady bar
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" " Key bindings can be changed, see below
" call wilder#setup({'modes': [':', '/', '?']})
" " Default keys
" call wilder#setup({
"       \ 'modes': [':', '/', '?'],
"       \ 'next_key': '<Tab>',
"       \ 'previous_key': '<S-Tab>',
"       \ 'accept_key': '<Down>',
"       \ 'reject_key': '<Up>',
"       \ })

" Auto higlight current word under cursor color configuration
highlight link CurrentWordTwins Search
highlight link CurrentWord PMenuSel
highlight Comment term=italic ctermfg=300 guifg=#828997
" highlight Comment ctermfg=145 ctermbg=16 guifg=#abb2bf guibg=#282c34
highlight LineNr term=italic ctermfg=300 guifg=#828997
" highlight VertSplit guibg=#AAAAAA guifg=#000000
highlight VertSplit term=NONE cterm=NONE gui=NONE guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE

" Config minimap
let g:minimap_git_colors = 1
let g:minimap_highlight_range = 1
let g:minimap_git_colors = 1
let g:minimap_git_color_priority = 130
let g:minimap_auto_start = 0
let g:minimap_auto_start_win_enter = 1

" Config vim js file import
" set tagfunc=jsfileimport#tagfunc
let g:js_file_import_sort_after_insert = 0
let g:js_file_import_prompt_if_no_tag = 1

" Hexokinase color code to color
let g:Hexokinase_highlighters = [ 'backgroundfull' ]

" Config python highlight
let g:python_highlight_all = 1

" Indent line indication configuration
let g:indentLine_setColors = 0
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_char = '▏'

" Add space after comment character in Nerd Commenter
let NERDSpaceDelims=1

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

" Set text width for auto break lines that are too long
set textwidth=80
set formatoptions+=w
set fo+=t

" Reduce the number of hit-enter prompts
set cmdheight=1

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
set numberwidth=1

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
set ttymouse=xterm2
set mouse=a

" Set timeout length for key map
set timeoutlen=1000 ttimeoutlen=0

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

" Config coc
let g:coc_global_extensions = [
  \ 'coc-ultisnips',
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-yaml',
  \ 'coc-highlight',
  \ 'coc-eslint',
  \ 'coc-git',
  \ 'coc-prettier',
  \ 'coc-flutter',
  \ 'coc-angular',
  \ 'coc-pyright',
  \ ]
" Map Ctrl + Space để show list functions/biến autocomplete
inoremap <silent><expr> <c-space> coc#refresh()
" Tự động import file của biến/function khi chọn và nhấn Tab
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<C-g>u\<TAB>"
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Go to definition ở tab mới
nmap <silent> gdd mp:call CocAction('jumpDefinition', 'tab drop')<CR>
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Hiển thị document cho function, biến
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (noc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
" Highlight word chỗ con trỏ đang đứng
autocmd CursorHold * silent call CocActionAsync('highlight')
" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')
" Shortuts organize imports
nnoremap <leader>io :OR<CR>
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <leader>ek <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>ej <Plug>(coc-diagnostic-next)

" Config prettier
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
let g:prettier#autoformat = 1

" Config FZF Map phím tắt Ctrl + P
nnoremap <C-p> :GFiles<CR>
" Tìm file trong project, nhưng bỏ mấy thư mục như node_modules ra, để tìm nhẹ hơn.
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path '**/node_modules/**' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
" Map phím "\f" để tìm nội dung, tương tự như "Ctrl + Shift + F" trên VSCode nhé
nnoremap <silent> <Leader>f :Rg<CR>

" Config Husk command-line mode mappings
cmap <Esc>k <M-k>
cnoremap <M-k> <Up>
cmap <Esc>j <M-j>
cnoremap <M-j> <Down>
cmap <Esc>l <M-l>
cnoremap <M-l> <Right>
cmap <Esc>L <M-L>
cnoremap <expr> <M-L> husk#right()
cmap <Esc>h <M-h>
cnoremap <M-h> <Left>
cmap <Esc>H <M-H>
cnoremap <expr> <M-H> husk#left()
cnoremap <expr> <C-n> getcmdpos()>strlen(getcmdline())?&cedit:"\<Lt>Right>"
cnoremap <expr> <C-f> &cedit

" Config Vim Multi Cursors
let g:multi_cursor_prev_key = '<C-b>'
let g:multi_cursor_quit_key = '<C-i>'

" Auto equal splits' size when resize window
autocmd VimResized * wincmd =
" autocmd VimResized * :call ResizeProportionally()<CR><CR>

" Setup session management
let g:session_directory       = "~/.vim/session"
let g:session_autoload        = "no"
let g:session_autosave        = "no"
let g:session_command_aliases = 1

" Setup indent for html files
autocmd BufRead,BufNewFile *.html setlocal shiftwidth=2
autocmd BufRead,BufNewFile *.xml setlocal shiftwidth=2
autocmd BufRead,BufNewFile *.css setlocal shiftwidth=2
let g:html_indent_script1  = "inc"
let g:html_indent_style1   = "inc"
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_autotags = "br,input,img,html,body,tbody"

" Setup Prettier for React
autocmd FileType javascript setlocal formatprg=prettier
autocmd FileType javascript.jsx setlocal formatprg=prettier
autocmd FileType javascriptreact setlocal formatprg=prettier
autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript
autocmd FileType typescript.tsx setlocal formatprg=prettier\ --parser\ typescript
autocmd FileType typescriptreact setlocal formatprg=prettier\ --parser\ typescript
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
autocmd BufRead,BufNewFile *.js setlocal shiftwidth=2
autocmd BufRead,BufNewFile *.jsx setlocal shiftwidth=2
let g:closetag_filetypes = 'html,xhtml,phtml,js,jsx'
let g:closetag_xhtml_filetypes = 'xhtml,javascript.jsx,jsx'
" let g:closetag_xhtml_filetypes = 'xhtml,js,jsx'
" let g:closetag_regions = {
" \ 'typescript.tsx': 'jsxRegion,tsxRegion',
" \ 'javascript.jsx': 'jsxRegion',
" \ 'typescriptreact': 'jsxRegion,tsxRegion',
" \ 'javascriptreact': 'jsxRegion',
" \ }
" autocmd BufNewFile,BufRead *.js setlocal filetype=javascript.jsx
" autocmd BufNewFile,BufRead *.jsx setlocal filetype=javascript.jsx
autocmd BufNewFile,BufRead *.js setfiletype javascript.jsx
autocmd BufNewFile,BufRead *.jsx setfiletype javascript.jsx

" Automatically set syntax highlighting when open css files
autocmd BufNewFile,BufRead *.css setfiletype css

" Syntax highlighting for .config files
autocmd BufRead,BufNewFile *.conf setfiletype dosini

" Syntax highlighting for .vim files
autocmd BufRead,BufNewFile *.vim setfiletype vim

" " Shortcuts jumping to next error line in ALE
" nnoremap <leader>aj :ALENext<cr>
" nnoremap <leader>ak :ALEPrevious<cr>

" Shortcuts split html tag and attributes into multiple lines
nnoremap <leader>sa V:s/[a-zA-Z}'"]\zs \ze/\r/g<CR>v?<<CR>=

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

" Map with ALT key
" Shortcuts visual to end of line
execute "set <A-v>=\ev"
nnoremap <A-v> vg_

" Map with ALT key
" Shortcuts select all lines
execute "set <A-a>=\ea"
nnoremap <A-a> mpggVG

" Map with ALT key
" Shortcuts open current session in gvim
execute "set <A-g>=\eg"
nnoremap <A-g> :mksession! ~/session.vim<CR>:!gvim -S ~/session.vim<CR><CR>

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
" Shortcuts open repository tree
execute "set <A-s>=\es"
nnoremap <A-s> S<Esc>

" Map with ALT key
" Shortcuts appending semi-colon to the end of line
execute "set <A-;>=\e;"
inoremap <A-;> <End>;<CR>
execute "set <A-:>=\e:"
inoremap <A-:> <End>;<Up><End><CR>
inoremap ;; <Down><End>;<CR>

" Map with ALT key
" Shortcuts appending comma to the end of line
execute "set <A-,>=\e,"
inoremap <A-,> <End>,<CR>
execute "set <A-<>=\e<"
inoremap <A-<> <End>,<Up><End><CR>

" Map with ALT key
" Shortcuts append space to end of line in insert mode
execute "set <A-a>=\ea"
inoremap <A-a> <C-o>A

" Map with ALT key
" Shortcuts replacing a character insert mode
execute "set <A-r>=\er"
inoremap <A-r> <C-o>r

" Map with ALT key
" Shortcuts split html tag
execute "set <A-s>=\es"
inoremap <A-s>t <C-o>dit<CR>x<BS><CR><C-o>k<Tab><C-o>p<C-o>vat=<C-o>j<C-o>w
" inoremap <A-s>t a<Esc>:Prettier<CR>i

" Map with ALT key
" Shortcuts moving cursor in insert mode
execute "set <A-l>=\el"
inoremap <A-l> <Right>
execute "set <A-h>=\eh"
inoremap <A-h> <Left>
execute "set <A-j>=\ej"
inoremap <A-j> <Down>
execute "set <A-k>=\ek"
inoremap <A-k> <Up>
execute "set <A-L>=\eL"
inoremap <A-L> <C-Right>
execute "set <A-H>=\eH"
inoremap <A-H> <C-Left>
execute "set <A-J>=\eJ"
inoremap <A-J> <C-x><C-e>
execute "set <A-K>=\eK"
inoremap <A-K> <C-x><C-y>

" Map with ALT key
" Shortcuts changing and merging and deleting in insert mode
execute "set <A-x>=\ex"
inoremap <A-x> <BS>
execute "set <A-X>=\eX"
inoremap <A-X> <Del>
execute "set <A-c>=\ec"
" inoremap <A-c> <C-o>:call ChangeWordBeforeCursor()<CR>
inoremap <A-c> <C-o>de
execute "set <A-C>=\eC"
" inoremap <A-C> <C-o>:call ChangeWordAfterCursor()<CR>
inoremap <A-C> <C-o>db
execute "set <A-u>=\eu"
inoremap <A-u> <C-o>u
execute "set <A-o>=\eo"
inoremap <A-o> <End><CR>
execute "set <A-i>=\ei"
inoremap <A-i> <Up><End><CR>
execute "set <A-d>=\ed"
inoremap <A-d> <C-o>dd
execute "set <A-m>=\em"
inoremap <A-m> <C-o>J
execute "set <A-M>=\eM"
inoremap <A-M> <Up><C-o>J
execute "set <A-=>=\e="
inoremap <A-=> <C-o>==
execute "set <A-+>=\e+"
inoremap <A-+> <Esc>S

" Remaps Esc
" inoremap <Esc> <C-[><Esc><C-[><Esc>
" inoremap <C-[> <C-[><C-[>
inoremap jj <Esc>
inoremap ii <Esc>
vnoremap ii <Esc>
cnoremap ii <C-c>
inoremap <expr> <C-L> (pumvisible() <bar><bar> &insertmode) ? '<C-L>' : '<Esc>'

" Remaps go to last non-space character of displayed line
execute "set <A-l>=\el"
nnoremap <A-l> g$
vnoremap <A-l> g$

" Map with ALT key
" Remaps visual column
execute "set <A-v>=\ev"
vnoremap <A-v> <C-v>

" Map with ALT key
" Remaps go to fist non-space character of displayed line
execute "set <A-h>=\eh"
nnoremap <A-h> g^
vnoremap <A-h> g^

" Remaps go to next block
" Map with ALT key
nnoremap J }
vnoremap J }
onoremap J }

" Remaps go to previous block
" Map with ALT key
nnoremap K {
vnoremap K {
onoremap K {

" Map with ALT key
" Remaps insert line above and to to insert mode
execute "set <A-o>=\eo"
nnoremap <A-o> o<Esc>

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
nnoremap <A-c> cc<Esc>

" Map with ALT key
" Remaps terminal calling
execute "set <A-t>=\et"
nnoremap <A-t> <C-z>

" Map with ALT key
" Remaps go to next and previous occurence
execute "set <A-/>=\e/"
nnoremap <A-/> *
vnoremap <A-/> *
execute "set <A-?>=\e?"
nnoremap <A-?> #
vnoremap <A-?> #

" Remaps line merge and split
nnoremap <leader>me J
nnoremap <leader>mu :call BreakHere()<CR>

" Map with ALT key
" Remaps vertical line scroll
execute "set <A-j>=\ej"
nnoremap <expr> <A-j> winheight(0)/4.'<C-e>'
execute "set <A-k>=\ek"
nnoremap <expr> <A-k> winheight(0)/4.'<C-y>'
execute "set <A-J>=\eJ"
nnoremap <A-J> <C-d>
execute "set <A-K>=\eK"
nnoremap <A-K> <C-u>

" Remaps scroll downwards
nnoremap { <C-d>
vnoremap { <C-d>

" Remaps scroll upwards
nnoremap } <C-u>
vnoremap } <C-u>

" Remaps go to next displayed line
nnoremap zj gj
vnoremap zj gj

" Remaps go to previous displayed line
nnoremap zk gk
vnoremap zk gk

" Remaps tab in and out
nnoremap <Tab> I<Tab><Esc>
nnoremap <S-Tab> I<BS><Esc>
nnoremap <leader>rt :%retab!<CR>

" Remaps O to insert line above
nnoremap <C-o> O<Esc>

" Remaps l and h to jump to the beginning of next and previous word
nnoremap h b
vnoremap h b
onoremap h b
nnoremap l w
vnoremap l w
onoremap l w

" Remaps l and h to jump to the beginning of next and previous word
nnoremap H ge
vnoremap H ge
nnoremap L e
vnoremap L e

" Remaps L and H to move cursor left and right character
nnoremap <C-h> h
vnoremap <C-h> h
onoremap <C-h> h
nnoremap <C-l> l
vnoremap <C-l> l
onoremap <C-l> l

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
nnoremap gp `p
" nnoremap gd mzgd

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
nnoremap glk :call NextIndent(0, 0, 0, 1, 1)<CR>
vnoremap glk :call NextIndent(0, 0, 0, 1, 1)<CR>
nnoremap glj :call NextIndent(0, 1, 0, 1, 1)<CR>
vnoremap glj :call NextIndent(0, 1, 0, 1, 1)<CR>
nnoremap glok :call NextIndent(0, 0, 1, 1, 1)<CR>
vnoremap glok :call NextIndent(0, 0, 1, 1, 1)<CR>
nnoremap gloj :call NextIndent(0, 1, 1, 1, 1)<CR>
vnoremap gloj :call NextIndent(0, 1, 1, 1, 1)<CR>

" Shortcuts toggle relative number
" nnoremap <leader>rn :set number! relativenumber!<CR>
nnoremap <leader>rn :set relativenumber!<CR>

" Shortcuts split creation
nnoremap <leader>vs :vsp .<CR>:Startify<CR>
nnoremap <leader>hs :sp .<CR>:Startify<CR>

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

" Shortcuts plugins update
nnoremap <leader>pu :PlugUpdate<CR>

" Shortcuts auto indent
nnoremap <leader>== mqgg=G`q

" Shortcuts merge blocks
nnoremap <leader>mb :5,8del <bar> let l=split(@","/n") <bar> ,s/$/\=remove(l,0)/g

" Shortcuts replace all occurrences
nnoremap <leader>ra :%s//gc<Left><Left><Left>

" Shortcuts replace all occurrences of word under cursor
nnoremap <expr> <leader>rc ':%s/\<'.expand('<cword>').'\>//gc<Left><Left><Left>'
vnoremap <expr> <leader>rc ':s/\<'.expand('<cword>').'\>//g<Left><Left>'
" nnoremap <LEADER>* :%s/\<<C-r><C-w>\>/
" nnoremap <expr> <leader>rc ':%s/\<'.expand('<cword>').'\>/<&>/g'

" Shortcuts replace all occurrences in one line
nnoremap <leader>rl :s//g<Left><Left>

" Shortcuts replace all occurrences in a block of code
nnoremap <leader>rb :.,s//g<Left><Left><Left><Left>
vnoremap <leader>rb :s//g<Left><Left>

" Shortcuts swap two words
nnoremap <expr> <leader>sw ':s/\('.expand('<cword>').'\)\(\)\(\)/\3\2\1/g<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>'

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

" Shortcuts copy, delete, select and comment a while block
nnoremap yal :call WhileBlockInteract('y')<CR>
nnoremap dal :call WhileBlockInteract('d')<CR>
nnoremap val :call WhileBlockInteract('')<CR>
nnoremap yil :call WhileBlockInteract('yi')<CR>
nnoremap dil :call WhileBlockInteract('di')<CR>
nnoremap vil :call WhileBlockInteract('vi')<CR>
nnoremap yasle :call WhileBlockInteract('yle')<CR>
nnoremap dasle :call WhileBlockInteract('dle')<CR>
nnoremap casle :call WhileBlockInteract('cle')<CR>
nnoremap vasle :call WhileBlockInteract('Vle')<CR>
nnoremap yasls :call WhileBlockInteract('yls')<CR>
nnoremap dasls :call WhileBlockInteract('dls')<CR>
nnoremap casls :call WhileBlockInteract('cls')<CR>
nnoremap vasls :call WhileBlockInteract('Vls')<CR>
nnoremap gcle :call WhileBlockInteract('gcle')<CR>
nnoremap gcls :call WhileBlockInteract('gcls')<CR>
nnoremap gcal :call WhileBlockInteract('gca')<CR>
nnoremap gcil :call WhileBlockInteract('gci')<CR>
" Shortcuts jump to the start, end and definition of a while block
nnoremap gle :call WhileBlockInteract('le')<CR>
nnoremap gls :call WhileBlockInteract('ls')<CR>

" Shortcuts copy, delete and select a for block
nnoremap yao :call ForBlockInteract('y')<CR>
nnoremap dao :call ForBlockInteract('d')<CR>
nnoremap vao :call ForBlockInteract('')<CR>

" Shortcuts copy, delete and select a switch case block
nnoremap yaca :call SwitchCaseBlockInteract('y')<CR>
nnoremap daca :call SwitchCaseBlockInteract('d')<CR>
nnoremap vaca :call SwitchCaseBlockInteract('')<CR>

" Shortcuts copy, delete and select a multiple line round braces block
nnoremap yas( :call MultipleLineBracesBlockInteract('y', '(')<CR>
nnoremap das( :call MultipleLineBracesBlockInteract('d', '(')<CR>
nnoremap vas( :call MultipleLineBracesBlockInteract('', '(')<CR>
nnoremap yasb :call MultipleLineBracesBlockInteract('y', '(')<CR>
nnoremap dasb :call MultipleLineBracesBlockInteract('d', '(')<CR>
nnoremap vasb :call MultipleLineBracesBlockInteract('', '(')<CR>

" Shortcuts copy, delete and select a multiple line curly braces block
nnoremap yas{ :call MultipleLineBracesBlockInteract('y', '{')<CR>
nnoremap das{ :call MultipleLineBracesBlockInteract('d', '{')<CR>
nnoremap vas{ :call MultipleLineBracesBlockInteract('', '{')<CR>
nnoremap yasB :call MultipleLineBracesBlockInteract('y', '{')<CR>
nnoremap dasB :call MultipleLineBracesBlockInteract('d', '{')<CR>
nnoremap vasB :call MultipleLineBracesBlockInteract('', '{')<CR>

" Shortcuts copy, delete and select a multiple line square braces block
nnoremap yas[ :call MultipleLineBracesBlockInteract('y', '[')<CR>
nnoremap das[ :call MultipleLineBracesBlockInteract('d', '[')<CR>
nnoremap vas[ :call MultipleLineBracesBlockInteract('', '[')<CR>
nnoremap yis[ :call MultipleLineBracesBlockInteract('yi', '[')<CR>
nnoremap dis[ :call MultipleLineBracesBlockInteract('di', '[')<CR>
nnoremap vis[ :call MultipleLineBracesBlockInteract('vi', '[')<CR>

" Shortcuts jump to the next or previous parameters
nnoremap gff :call JumpNextParameter(2)<CR>
nnoremap gll :call JumpNextParameter(1)<CR>
nnoremap ghh :call JumpNextParameter(0)<CR>

" Shortcuts copy, delete and select a c/cpp function block
autocmd FileType c,cpp,java nnoremap <buffer> yaf :call FunctionBlockInteractCppAndJava('y')<CR>
autocmd FileType c,cpp,java nnoremap <buffer> daf :call FunctionBlockInteractCppAndJava('d')<CR>
autocmd FileType c,cpp,java nnoremap <buffer> vaf :call FunctionBlockInteractCppAndJava('')<CR>
" Shortcuts jump to the start, end and definition of function
autocmd FileType c,cpp,java nnoremap <buffer> gfe :call FunctionBlockInteractCppAndJava('fs')<CR>
autocmd FileType c,cpp,java nnoremap <buffer> gfs :call FunctionBlockInteractCppAndJava('fe')<CR>
autocmd FileType c,cpp,java nnoremap <buffer> gfd mp:call GotoFunctionDefinitionCppAndJava()<CR>

" Shortcuts copy, delete, select and comment a javascript ES6 function block
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> yaf :call FunctionBlockInteractES6('y')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> daf :call FunctionBlockInteractES6('d')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> vaf :call FunctionBlockInteractES6('')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> yif :call FunctionBlockInteractES6('yi')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> dif :call FunctionBlockInteractES6('di')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> cif :call FunctionBlockInteractES6('ci')<CR>S
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> vif :call FunctionBlockInteractES6('vi')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> yasfs :call FunctionBlockInteractES6('yfs')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> dasfs :call FunctionBlockInteractES6('dfs')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> casfs :call FunctionBlockInteractES6('cfs')<CR>S
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> vasfs :call FunctionBlockInteractES6('Vfs')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> yasfe :call FunctionBlockInteractES6('yfe')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> dasfe :call FunctionBlockInteractES6('dfe')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> casfe :call FunctionBlockInteractES6('cfe')<CR>S
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> vasfe :call FunctionBlockInteractES6('Vfe')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gcaf :call FunctionBlockInteractES6('gca')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gcif :call FunctionBlockInteractES6('gci')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gcfs :call FunctionBlockInteractES6('gcfs')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gcfe :call FunctionBlockInteractES6('gcfe')<CR>
" Shortcuts jump to the start, end and definition of function
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gfk :call FunctionBlockInteractES6('fs')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gfj :call FunctionBlockInteractES6('fe')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gfs :call FunctionBlockInteractES6('fs')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gfe :call FunctionBlockInteractES6('fe')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gfd mp:call GotoFunctionDefinitionES6()<CR>
" Shortcuts copy, delete, select and comment a javascript ES6 method block
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> yam :call MethodBlockInteractES6('y')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> dam :call MethodBlockInteractES6('d')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> vam :call MethodBlockInteractES6('')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> yim :call MethodBlockInteractES6('yi')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> dim :call MethodBlockInteractES6('di')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> cim :call MethodBlockInteractES6('ci')<CR>S
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> vim :call MethodBlockInteractES6('vi')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> yasms :call MethodBlockInteractES6('yms')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> dasms :call MethodBlockInteractES6('dms')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> casms :call MethodBlockInteractES6('cms')<CR>S
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> vasms :call MethodBlockInteractES6('Vms')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> yasme :call MethodBlockInteractES6('yme')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> dasme :call MethodBlockInteractES6('dme')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> casme :call MethodBlockInteractES6('cme')<CR>S
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> vasme :call MethodBlockInteractES6('Vme')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gcam :call MethodBlockInteractES6('gca')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gcim :call MethodBlockInteractES6('gci')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gcms :call MethodBlockInteractES6('gcms')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gcme :call MethodBlockInteractES6('gcme')<CR>
" Shortcuts jump to the start, end and definition of method
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gms :call MethodBlockInteractES6('ms')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gme :call MethodBlockInteractES6('me')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gmk :call MethodBlockInteractES6('ms')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gmj :call MethodBlockInteractES6('me')<CR>
" Shortcuts copy, delete, select and comment a javascript ES6 class block
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> yacl :call ClassBlockInteractES6('y')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> dacl :call ClassBlockInteractES6('d')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> vacl :call ClassBlockInteractES6('')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> yicl :call ClassBlockInteractES6('yi')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> dicl :call ClassBlockInteractES6('di')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> cicl :call ClassBlockInteractES6('ci')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> vicl :call ClassBlockInteractES6('vi')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gcacl :call ClassBlockInteractES6('gca')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gcicl :call ClassBlockInteractES6('gci')<CR>
" Shortcuts jump to the start, end and definition of class
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gclae :call ClassBlockInteractES6('ce')<CR>
autocmd FileType js,jsx,javascript,javascriptreact nnoremap <buffer> gclas :call ClassBlockInteractES6('cs')<CR>

" Shortcuts copy, delete and select a python function block
autocmd FileType python nnoremap <buffer> yaf :call FunctionBlockInteractPython('y')<CR>
autocmd FileType python nnoremap <buffer> daf :call FunctionBlockInteractPython('d')<CR>
autocmd FileType python nnoremap <buffer> vaf :call FunctionBlockInteractPython('')<CR>
" Shortcuts jump to the start, end and definition of function
autocmd FileType python nnoremap <buffer> gfs :call FunctionBlockInteractPython('fs')<CR>
autocmd FileType python nnoremap <buffer> gfe :call FunctionBlockInteractPython('fe')<CR>
autocmd FileType python nnoremap <buffer> gfd mp:call GotoFunctionDefinitionPython()<CR>

" Shortcuts copy, delete and select a vimscript function block
autocmd FileType vim* nnoremap <buffer> yaf :call FunctionBlockInteractVim('y')<CR>
autocmd FileType vim* nnoremap <buffer> daf :call FunctionBlockInteractVim('d')<CR>
autocmd FileType vim* nnoremap <buffer> vaf :call FunctionBlockInteractVim('')<CR>
" Shortcuts jump to the start, end and definition of function
autocmd FileType vim* nnoremap <buffer> gfs :call FunctionBlockInteractVim('fs')<CR>
autocmd FileType vim* nnoremap <buffer> gfe :call FunctionBlockInteractVim('fe')<CR>
autocmd FileType vim* nnoremap <buffer> gfd mp:call GotoFunctionDefinitionVim()<CR>

" Shortcuts fold to current level
nnoremap  <leader>fl :let &l:fdl=indent('.')/&shiftwidth - 1<CR>

" Automatically set syntax highlighting when open shell scripts
autocmd FileType sh setlocal syntax=sh

" Automatically call Prettier on saving a file or text changed or insert leave
autocmd BufWritePre * Prettier
" let blacklist_TextChanged = ['nerdtree']
" autocmd TextChanged * if (index(blacklist_TextChanged, &ft)) < 0 | Prettier
" autocmd InsertLeave * Prettier

" Automatically delete trailing white spaces before saving a file
" Replaced by coc
let list_StripTrailingWhitespace = ['vim', 'cpp']
autocmd BufWritePre * if (index(list_StripTrailingWhitespace, &ft)) >= 0 | call StripTrailingWhitespace()
" autocmd BufWritePre *.vim :call StripTrailingWhitespace()

" Automatically delete trailing white spaces before saving a file
" Replaced by coc
" autocmd BufWritePre * :call TrimTrailingLines()

" Automatically insert skeleton when create new .cpp files
autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp

" Automatically change directory to new openned file
autocmd BufEnter * silent! :lcd%:p:h

function! StripTrailingWhitespace()
    " Function to delete trailing white spaces
    if !&binary && &filetype != 'diff'
        normal! mz
        normal! Hmy
        %s/\s\+$//e
        normal! 'yz<CR>
        normal! `z
    endif
endfunction

function! TrimTrailingLines()
    " Function to delete empty lines at the end of file
    let lastLine = line('$')
    let lastNonblankLine = prevnonblank(lastLine)
    if lastLine > 0 && lastNonblankLine != lastLine
        silent! execute lastNonblankLine + 1 . ',$delete _'
    endif
endfunction

function! IfElseBlockInteract(choice)
    " Function to interact block of codes
    " choice = 'y' for yanking an if else block
    " choice = 'd' for deleting an if else block
    " choice = '' for selecting an if else block
    while 1
        call search('if\s*(.*)\s*{','bc')
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

function! WhileBlockInteract(choice)
    " Function to interact block of codes
    " choice = 'y' for yanking a while block
    " choice = 'd' for deleting a while block
    " choice = '' for selecting a while block
    " choice = 'yi' for yanking a while block
    " choice = 'di' for deleting a while block
    " choice = 'vi' for selecting a while block
    " choice = 'ls' for jumping to start of a while block
    " choice = 'le' for jumping to end of a while block
    " choice = 'gci' for commenting a while block
    let l:currentPos = getpos('.')
    let l:search_pattern = "\\<while\\>\\s*(\\?[0-9a-zA-Z_ ,:&|\\[\\]\\n.=<>!~+\\-*/%]*)\\?\\s*{\\n\\?"
    let l:start_pattern = "[0-9a-zA-Z_\\](]\\s*}\\?)\\?\\s*{\\?\\n"
    let l:NO_skipped = 0
    while l:NO_skipped < 20
        call search(l:search_pattern, 'bc')
        call search(l:start_pattern)
        let l:startPos = getpos('.')
        call search(l:search_pattern, 'e')
        normal! %
        let l:endPos = getpos('.')
        if eval(l:endPos[1] < l:currentPos[1])
            let l:NO_skipped += 1
            call setpos('.', [l:startPos[0], l:startPos[1] - 1, l:startPos[2], l:startPos[3]])
            continue
        endif
        if l:currentPos[1] != l:startPos[1] && l:currentPos[1] != l:endPos[1] && l:currentPos[1] != l:endPos[1] - 1
            call setpos("'p", l:currentPos)
        endif
        if a:choice == 'ls'
            call setpos('.', l:startPos)
            return getpos('.')
        elseif a:choice == 'le'
            call setpos('.', [l:endPos[0], l:endPos[1] - 1, l:endPos[2], l:endPos[3]])
            call search("\\S")
            return l:endPos
        elseif a:choice[1:2] == 'ls'
            call setpos('.', l:currentPos)
            let l:distance = l:currentPos[1] -  l:startPos[1] - 1
            execute 'normal! ' . a:choice[0] . l:distance . 'k'
        elseif a:choice[1:2] == 'le'
            call setpos('.', l:currentPos)
            let l:distance = l:endPos[1] -  l:currentPos[1] - 1
            execute 'normal! ' . a:choice[0] . l:distance . 'j'
        elseif a:choice == 'gcls'
            execute l:startPos[1] . '+1,' . l:currentPos[1] . 'Commentary'
            call setpos('.', l:currentPos)
        elseif a:choice == 'gcle'
            execute l:currentPos[1] . ',' . l:endPos[1] . '-1Commentary'
            call setpos('.', l:currentPos)
        elseif a:choice == 'gca'
            execute l:startPos[1] . ',' . l:endPos[1] . 'Commentary'
        elseif a:choice == 'gci'
            execute l:startPos[1] . '+1,' . l:endPos[1] . '-1Commentary'
        elseif a:choice[1] == 'i'
            call setpos('.', l:startPos)
            call search('{')
            execute 'normal! ' . a:choice . '{'
        else
            call setpos("'z", l:startPos)
            call setpos('.', l:endPos)
            " Try to include empty line below
            call search("^$", '', line('.')+1)
            execute 'normal! V`z' . a:choice
        endif
        break
    endwhile
endfunction

function! ForBlockInteract(choice)
    " Function to interact block of codes
    " choice = 'y' for yanking a for block
    " choice = 'd' for deleting a for block
    " choice = '' for selecting a for block
    call search('for.*(.*)','bc')
    normal! mz
    call search('{','c')
    execute 'normal! %V`z' . a:choice
endfunction

function! SwitchCaseBlockInteract(choice)
    " Function to interact block of codes
    " choice = 'y' for yanking a switch case block
    " choice = 'd' for deleting a switch case block
    " choice = '' for selecting a switch case block
    call search('switch.*(.*)','bc')
    normal! mz
    call search('{','c')
    execute 'normal! %V`z' . a:choice
endfunction

function! MultipleLineBracesBlockInteract(choice, braces)
    " Function to interact block of codes
    " choice = 'y' for yanking a multiple line braces block
    " choice = 'd' for deleting a multiple line braces block
    " choice = '' for selecting a multiple line braces block
    " braces = '(' or '{', '[', '<', '`' for selecting a multiple line braces block
    let l:NO_skipped = 0
    call search(a:braces, 'bc')
    while l:NO_skipped < 20
        let l:startPos = getpos('.')
        normal! %
        let l:endPos = getpos('.')
        if eval(l:startPos[1] == l:endPos[1])
            let l:NO_skipped += 1
            normal! %
            call search(a:braces, 'b')
            continue
        endif
        if a:choice[1] == 'i'
            call setpos('.', l:startPos)
            execute 'normal! ' . a:choice . a:braces
        else
            call setpos("'z", l:startPos)
            call setpos('.', l:endPos)
            " Try to include empty line below
            call search("^$", '', line('.')+1)
            execute 'normal! V`z' . a:choice
        endif
        break
    endwhile
endfunction

function! JumpNextParameter(choice)
    " Function jump to the next or previous parameters
    " choice = '2' for jumping to the function call
    " choice = '1' for jumping to the next parameters
    " choice = '0' for jumping to the previous parameters
    let l:parameters_search_pattern = "[0-9a-zA-Z_.\\[\\]]\\+\\(\\s*[+\\-*/%= ]\\s*[0-9a-zA-Z_.\\[\\]]\\+\\)*[,)]"
    let l:function_search_pattern = "\\<[0-9a-zA-Z_]\\+\\>\\s*("
    if a:choice == 2
        if eval(search(l:function_search_pattern, 'bc', line('.')) == 0)
            call search(l:function_search_pattern, 'c', line('.'))
        endif
    elseif a:choice == 1
        call search("[()\\[\\],]", '', line('.'))
        if eval(search(l:parameters_search_pattern, '', line('.')) == 0)
            call search("(", 'b', line('.'))
            call search(l:parameters_search_pattern, '', line('.'))
        endif
    elseif a:choice == 0
        if eval(search(l:parameters_search_pattern,'b', line('.')) == 0)
            call search(")", '', line('.'))
            call search(l:parameters_search_pattern,'b', line('.'))
        endif
    endif
endfunction

function! FunctionBlockInteractCppAndJava(choice)
    " Function to interact block of codes
    " choice = 'y' for yanking a c/cpp/java function block
    " choice = 'd' for deleting a c/cpp/java function block
    " choice = '' for selecting a c/cpp/java function block
    " choice = 'fs' for jumping to start of a c/cpp/java function block
    " choice = 'fe' for jumping to end of a c/cpp/java function block
    normal! mp
    let l:currentPos = getpos('.')
    let l:NO_skipped = 0
    let l:n = search("\\<[0-9a-zA-Z_]*\\>[.:~ ]*\\<[0-9a-zA-Z_]*\\>[^(]*([0-9a-zA-Z_ ,:*&\\[\\]\\n.]*)\\s*\\n*.*{", 'bc')
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

function! GotoFunctionDefinitionCppAndJava()
    let l:currentPos = getpos('.')
    let n = search("\\<".expand("<cword>")."\\>[^(]*([^)]*)\\s*\\n*\\s*{")
    let l:functionStart = getpos('.')
    if l:currentPos[1] != l:functionStart[1]
        call setpos("'z", l:currentPos)
    endif
endfunction

function CountBraces(brace, lnum)
    " Function to count searched pattern occurences
    let line=getline(a:lnum)
    let d={'num': 0}
    call substitute(line, a:brace, '\=extend(d, {"num": d.num+1}).num', 'g')
    return d.num
endfunction

function! FunctionBlockInteractHelperES6(choice)
    " Function to interact block of codes
    " choice = 'fs' for returning position of the start of a arrow function block
    " choice = 'fe' for returning position of the end of a arrow function block
    let l:n = search("(\\?[0-9a-zA-Z_ ,=:*&()\\[\\]{}\\n]*)\\?\\s*=>\\s*{\\?\\n\\?", 'bc')
    if a:choice == 'fs'
        call search("[0-9a-zA-Z_\\]()]\\s*}\\?)\\?\\s*=>\\s*{\\?\\n\\?", '', line('.'))
        return getpos('.')
    elseif a:choice == 'fe'
        if (eval(search("\\s*=>\\s*{", 'e', line('.')) == 0))
            let l:openBraces = CountBraces('(', line('.'))
            let l:closeBraces = CountBraces(')', line('.'))
            if (eval(l:openBraces > l:closeBraces))
                call search("(\\?(\\?[0-9a-zA-Z_ ,:*&\\[\\]{}\\n]*)\\?\\s*=>\\s*{\\?\\n\\?", 'bc', line('.'))
            endif
        endif
        normal! %
        return getpos('.')
    endif
endfunction

function! FunctionBlockInteractES6(choice)
    " Function to interact block of codes
    " choice = 'y' for yanking a ES6 function block
    " choice = 'd' for deleting a ES6 function block
    " choice = '' for selecting a ES6 function block
    " choice = 'yi' for yanking a ES6 function block
    " choice = 'di' for deleting a ES6 function block
    " choice = 'vi' for selecting a ES6 function block
    " choice = 'fs' for jumping to start of a ES6 function block
    " choice = 'fe' for jumping to end of a ES6 function block
    " choice = 'gci' for commenting a ES6 function block
    let l:currentPos = getpos('.')
    let l:NO_skipped = 0
    while l:NO_skipped < 20
        let l:startPos = FunctionBlockInteractHelperES6('fs')
        let l:endPos = FunctionBlockInteractHelperES6('fe')
        if eval(l:endPos[1] < l:currentPos[1])
            let l:NO_skipped += 1
            call setpos('.', [l:startPos[0], l:startPos[1] - 1, l:startPos[2], l:startPos[3]])
            continue
        endif
        if l:currentPos[1] != l:startPos[1] && l:currentPos[1] != l:endPos[1] && l:currentPos[1] != l:endPos[1] - 1
            call setpos("'p", l:currentPos)
        endif
        if a:choice == 'fs'
            call setpos('.', l:startPos)
            return l:startPos
        elseif a:choice == 'fe'
            call setpos('.', [l:endPos[0], l:endPos[1] - 1, l:endPos[2], l:endPos[3]])
            call search("\\S")
            return l:endPos
        elseif a:choice[1:2] == 'fs'
            call setpos('.', l:currentPos)
            let l:distance = l:currentPos[1] -  l:startPos[1] - 1
            execute 'normal! ' . a:choice[0] . l:distance . 'k'
        elseif a:choice[1:2] == 'fe'
            call setpos('.', l:currentPos)
            let l:distance = l:endPos[1] -  l:currentPos[1] - 1
            execute 'normal! ' . a:choice[0] . l:distance . 'j'
        elseif a:choice == 'gcfs'
            execute l:startPos[1] . '+1,' . l:currentPos[1] . 'Commentary'
            call setpos('.', l:currentPos)
        elseif a:choice == 'gcfe'
            execute l:currentPos[1] . ',' . l:endPos[1] . '-1Commentary'
            call setpos('.', l:currentPos)
        elseif a:choice == 'gca'
            execute l:startPos[1] . ',' . l:endPos[1] . 'Commentary'
        elseif a:choice == 'gci'
            execute l:startPos[1] . '+1,' . l:endPos[1] . '-1Commentary'
        elseif a:choice[1] == 'i'
            call setpos('.', l:startPos)
            call search('{')
            execute 'normal! ' . a:choice . '{'
        else
            call setpos("'z", l:startPos)
            call setpos('.', l:endPos)
            " Try to include empty line below
            call search("^$", '', line('.')+1)
            execute 'normal! V`z' . a:choice
        endif
        break
    endwhile
endfunction

function! GotoFunctionDefinitionES6()
    normal! mp
    let l:currentPos = getpos('.')
    let n = search("\\<".expand("<cword>")."\\>\\s*=\\s*([^)]*)\\s*=>\\s*{")
    let l:functionStart = getpos('.')
    if l:currentPos[1] != l:functionStart[1]
        call setpos("'z", l:currentPos)
    endif
endfunction

function! MethodBlockInteractES6(choice)
    " Function to interact block of codes
    " choice = 'y' for yanking a ES6 method block
    " choice = 'd' for deleting a ES6 method block
    " choice = '' for selecting a ES6 method block
    " choice = 'yi' for yanking a ES6 method block
    " choice = 'di' for deleting a ES6 method block
    " choice = 'vi' for selecting a ES6 method block
    " choice = 'ms' for jumping to start of a ES6 method block
    " choice = 'me' for jumping to end of a ES6 method block
    " choice = 'gci' for commenting a ES6 method block
    let l:currentPos = getpos('.')
    let l:search_pattern = "\\<[0-9a-zA-Z_]*\\>\\s*([0-9a-zA-Z_ ,:*&\\[\\]\\n=]*)\\s*{\\n\\?"
    let l:start_pattern = "\\S\\s*}\\?)\\?\\s*{\\n\\?"
    let l:NO_skipped = 0
    while l:NO_skipped < 20
        call search(l:search_pattern, 'bc')
        if eval(search("\\(\\<if\\>\\|\\<for\\>\\|\\<while\\>\\|\\<switch\\>\\)", 'cn', line('.')) != 0)
            let l:NO_skipped += 1
            normal! k
            continue
        endif
        call search(l:start_pattern)
        let l:startPos = getpos('.')
        call search(l:search_pattern, 'e')
        normal! %
        let l:endPos = getpos('.')
        if eval(l:endPos[1] < l:currentPos[1])
            let l:NO_skipped += 1
            call setpos('.', [l:startPos[0], l:startPos[1] - 1, l:startPos[2], l:startPos[3]])
            continue
        endif
        if l:currentPos[1] != l:startPos[1] && l:currentPos[1] != l:endPos[1] && l:currentPos[1] != l:endPos[1] - 1
            call setpos("'p", l:currentPos)
        endif
        if a:choice == 'ms'
            call setpos('.', l:startPos)
            return l:startPos
        elseif a:choice == 'me'
            call setpos('.', [l:endPos[0], l:endPos[1] - 1, l:endPos[2], l:endPos[3]])
            call search("\\S")
            return l:endPos
        elseif a:choice[1:2] == 'ms'
            call setpos('.', l:currentPos)
            let l:distance = l:currentPos[1] -  l:startPos[1] - 1
            execute 'normal! ' . a:choice[0] . l:distance . 'k'
        elseif a:choice[1:2] == 'me'
            call setpos('.', l:currentPos)
            let l:distance = l:endPos[1] -  l:currentPos[1] - 1
            execute 'normal! ' . a:choice[0] . l:distance . 'j'
        elseif a:choice == 'gcms'
            execute l:startPos[1] . '+1,' . l:currentPos[1] . 'Commentary'
            call setpos('.', l:currentPos)
        elseif a:choice == 'gcme'
            execute l:currentPos[1] . ',' . l:endPos[1] . '-1Commentary'
            call setpos('.', l:currentPos)
        elseif a:choice == 'gca'
            execute l:startPos[1] . ',' . l:endPos[1] . 'Commentary'
        elseif a:choice == 'gci'
            execute l:startPos[1] . '+1,' . l:endPos[1] . '-1Commentary'
        elseif a:choice[1] == 'i'
            call setpos('.', l:startPos)
            call search('{')
            execute 'normal! ' . a:choice . '{'
        else
            call setpos("'z", l:startPos)
            call setpos('.', l:endPos)
            " Try to include empty line below
            call search("^$", '', line('.')+1)
            execute 'normal! V`z' . a:choice
        endif
        break
    endwhile
endfunction

function! ClassBlockInteractES6(choice)
    " Function to interact block of codes
    " choice = 'y' for yanking a ES6 class block
    " choice = 'd' for deleting a ES6 class block
    " choice = '' for selecting a ES6 class block
    " choice = 'yi' for yanking a ES6 class block
    " choice = 'di' for deleting a ES6 class block
    " choice = 'vi' for selecting a ES6 class block
    " choice = 'cs' for jumping to start of a ES6 class block
    " choice = 'ce' for jumping to end of a ES6 class block
    " choice = 'gci' for commenting a ES6 class block
    let l:currentPos = getpos('.')
    let l:search_pattern = "\\<class\\>\\s\\+\\<[0-0a-zA-Z]\\+\\>\\s\\+\\(\\<extends\\>\\s\\+\\<[0-9a-zA-Z]\\+\\>\\s\\+\\)\\?{\\?\\n\\?"
    let l:start_pattern = "\\<[0-0a-zA-Z]\\+\\>\\s\\+\\(\\<extends\\>\\s\\+\\<[0-9a-zA-Z]\\+\\>\\s\\+\\)\\?{\\?\\n\\?"
    let l:NO_skipped = 1
    while l:NO_skipped < 20
        call search(l:search_pattern, 'bc')
        call search(l:start_pattern)
        let l:startPos = getpos('.')
        call search(l:search_pattern, 'e')
        normal! %
        let l:endPos = getpos('.')
        if eval(l:endPos[1] < l:currentPos[1])
            let l:NO_skipped += 1
            call setpos('.', [l:startPos[0], l:startPos[1] - 1, l:startPos[2], l:startPos[3]])
            continue
        endif
        if l:currentPos[1] != l:startPos[1] && l:currentPos[1] != l:endPos[1] && l:currentPos[1] != l:endPos[1] - 1
            call setpos("'p", l:currentPos)
        endif
        if a:choice == 'cs'
            call setpos('.', l:startPos)
            return getpos('.')
        elseif a:choice == 'ce'
            call setpos('.', l:endPos)
            return getpos('.')
        elseif a:choice == 'gca'
            execute l:startPos[1] . ',' . l:endPos[1] . 'Commentary'
        elseif a:choice == 'gci'
            execute l:startPos[1] . '+1,' . l:endPos[1] . '-1Commentary'
        elseif a:choice[1] == 'i'
            call setpos('.', l:startPos)
            call search('{')
            execute 'normal! ' . a:choice . '{'
        else
            call setpos("'z", l:startPos)
            call setpos('.', l:endPos)
            " Try to include empty line below
            call search("^$", '', line('.')+1)
            execute 'normal! V`z' . a:choice
        endif
        break
    endwhile
endfunction

function! FunctionBlockInteractPython(choice)
    " choice = 'y' for yanking a function block
    " choice = 'd' for deleting a function block
    " choice = '' for selecting a function block
    " choice = 'fs' for jumping to start of a function block
    " choice = 'fe' for jumping to end of a function block
    normal! mp
    let l:currentPos = getpos('.')
    call search("\\<def\\>\\s*\\<[0-9a-zA-Z_]*\\>\\s*([^)]*)\\s*\\(->\\s*\\<[0-9a-zA-Z_]*\\>\\s*\\)\\?:", 'bc')
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

function! GotoFunctionDefinitionPython()
    normal! mp
    let l:currentPos = getpos('.')
    let n = search("\\<".expand("<cword>")."\\>[^(]*([^)]*)\\s*:")
    let l:functionStart = getpos('.')
    if l:currentPos[1] != l:functionStart[1]
        call setpos("'z", l:currentPos)
    endif
endfunction

function! FunctionBlockInteractVim(choice)
    " choice = 'y' for yanking a function block
    " choice = 'd' for deleting a function block
    " choice = '' for selecting a function block
    " choice = 'fs' for jumping to start of a function block
    " choice = 'fe' for jumping to end of a function block
    normal! mp
    let l:functionStart = search("\\<function\\>!\\?\\s*\\<[0-9a-zA-Z_]*\\>\\s*([^)]*)", 'bc')
    if a:choice == 'fs'
        call search(")")
        return
    elseif a:choice == 'fe'
        call search("^\\<endfunc")
        return
    else
        normal! mz
        call search("^\\<endfunc")
        " Try to include empty line below
        call search("^$", '', line('.')+1)
        execute 'normal! V`z' . a:choice
    endif
endfunction

function! GotoFunctionDefinitionVim()
    normal! mp
    let l:currentPos = getpos('.')
    let n = search("function\\>!\\?\\s*\\<".expand("<cword>")."\\>[^(]*([^)]*)", "e")
    let l:functionStart = getpos('.')
    if l:currentPos[1] != l:functionStart[1]
        call setpos("'z", l:currentPos)
    endif
endfunction

function! IndentLevel(lnum)
    return indent(a:lnum) / &shiftwidth
endfunction

function! NextNonBlankLine(lnum)
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

function! GetPotionFold(lnum)
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

function! SearchWithSkip(pattern, flags, stopline, timeout, skip)
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

function! SearchOutside(synName, pattern)
    "
    " Searches for the specified pattern, but skips matches that
    " exist within the specified syntax region.
    "
    call SearchWithSkip(a:pattern, '', '', '',
                \ 'synIDattr(synID(line("."), col("."), 0), "name") =~? "' . a:synName . '"' )

endfunction

function! NextIndent(exclusive, fwd, lowerlevel, skipblanks, movecursor)
" Function to jump to next indent
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

function! Getchar(right)
    "
    " Function to get character right or left the cursor
    " Let right = 0 to get charater under the cursor
    "
    return strcharpart(strpart(getline('.'), col('.') - 1 + a:right), 0, 1)
endfunction

function! IsAlphabet(char)
    "
    "Function to check if a character was an alphabet letter
    "
    return a:char >= 'a' && a:char <= 'b' || a:char >= 'A' && a:char <= 'Z'
endfunction

function! ChangeWordAfterCursor()
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

function! ChangeWordBeforeCursor()
    let l:cursor = Getchar(0)
    echo l:cursor
    if ( l:cursor == ' ' )
        normal bdaw
    else
        normal daw
    endif
endfunction

function! ResizeProportionally()
    mksession! ~/sessions.vim
    " mksession! ~/session.vim<CR>:only<CR>
    " wincmd =
    " Change window size
    source ~/sessions.vim
endfunction

function! BreakHere()
    s/^\(\s*\)\(.\{-}\)\(\s*\)\(\%#\)\(\s*\)\(.*\)/\1\2\r\1\4\6
    call histdel("/", -1)
endfunction

vnoremap <silent> [l <Esc>:call NextIndent(0, 0, 0, 1)<CR>m'gv''
vnoremap <silent> ]l <Esc>:call NextIndent(0, 1, 0, 1)<CR>m'gv''
vnoremap <silent> [L <Esc>:call NextIndent(0, 0, 1, 1)<CR>m'gv''
vnoremap <silent> ]L <Esc>:call NextIndent(0, 1, 1, 1)<CR>m'gv''
onoremap <silent> [l :call NextIndent(0, 0, 0, 1)<CR>
onoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<CR>
onoremap <silent> [L :call NextIndent(1, 0, 1, 1)<CR>
onoremap <silent> ]L :call NextIndent(1, 1, 1, 1)<CR>

" onoremap <silent> k :g/3D/s/^\s*\\zs\(\w\)/# \1/
" iabbrev </ </<C-X><C-O>
" inoremap <buffer> > ></<C-x><C-o><C-y><C-o>%<CR><C-o>O
" :g/pattern/s/^/;
" :g/pattern/norm I;
" :%s/.*pattern/;&
" :g!/wachl_ws\/build/g!/wachl_ws\/devel/g!/.*.pyc\>/
" :s/\v(.{80})/\1\r/g
" :s/       replaces within the current select
" \v        uses regular expressions
" (.{80})   selects 80 characters & placed them into group one
" \1\r      replaces group one with group one and a newline
