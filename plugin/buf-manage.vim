" {{{ Delete buffers when exiting
" the if statement makes sure you don't get inside a loop when trying
" to quit the last opened file
command! -nargs=* -bang Q if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1| q<bang> | else | bdel<bang> | endif | set foldmethod=indent
cabbrev q Q
command! -nargs=* -bang WQ w<bang> | Q
cabbrev wq WQ
cabbrev Wq WQ
cabbrev wQ WQ
" Edit a different file and delete the previous buffer
command! -nargs=1 -bang -complete=file E e <args> | bdel<bang> #
" command to switch a buffer and deleting the last one
command! -nargs=* -bang Bn bn | bdel<bang> #
command! -nargs=* -bang Bp bp | bdel<bang> #
" }}}

" {{{ Quit the buffer but don't delete it
command! -nargs=* -bang QB q<bang>
cabbrev qb QB
cabbrev Qb QB
cabbrev qB QB
command! -nargs=* -bang WQB w | q<bang>
cabbrev wqb WQB
cabbrev Wqb WQB
cabbrev wQb WQB
cabbrev WQb WQB
cabbrev wqB WQB
cabbrev WqB WQB
cabbrev wQB WQB
" }}}

" {{{ navigation (mappings)
nnoremap b<right> :bn<CR>
nnoremap b<left> :bp<CR>
nnoremap B<left> :Bp<CR>
nnoremap B<right> :Bn<CR>
nnoremap bl :bn<CR>
nnoremap bh :bp<CR>
nnoremap Bh :Bp<CR>
nnoremap Bl :Bn<CR>
" }}}

" {{{ very usefull 'w' and 'q' Abbreviations
cabbrev W w
cabbrev WA wa
cabbrev Wa wa
cabbrev Qa qa
cabbrev QA qa
cabbrev qA qa
cabbrev Wqa wqa
cabbrev WQa wqa
cabbrev WQA wqa
" }}}

" vim:ft=vim:foldmethod=marker
