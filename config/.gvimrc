"Shortcuts gvim font size changing
nnoremap + :call fontsize#inc()<CR><C-w>=
nnoremap - :call fontsize#dec()<CR><C-w>=
nnoremap _ :call fontsize#default()<CR><C-w>=

"Shortcuts GVIMRC summoning and sourcing
nnoremap <leader>eg :vsp $MYGVIMRC<CR> <C-w>L
nnoremap <leader>sg :source $MYGVIMRC <bar> :doautocmd BufRead<CR>

