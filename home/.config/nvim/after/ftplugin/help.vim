" Jump to links with enter
nnoremap <silent> <buffer> <CR> <C-]>

" Jump back with backspace
nnoremap <silent> <buffer> <BS> <C-T>
" q to quit
nnoremap <silent> <buffer> q :quit<CR>
" open help file in the left window
" alternative: e.g. vert help syntax
autocmd BufWinEnter <buffer> wincmd H
" autocmd BufWinEnter <buffer> setlocal number

setlocal number
setlocal relativenumber
setlocal nospell
setlocal foldmethod=indent
if !&buflisted
  setlocal bufhidden=wipe
endif

setlocal textwidth=82
setlocal formatoptions+=t
setlocal formatoptions-=c
setlocal formatoptions-=r
setlocal formatoptions-=o
setlocal formatoptions-=q
