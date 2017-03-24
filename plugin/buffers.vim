" {{{ Abbreviations
cabbrev W w
cabbrev WA wa
cabbrev Wa wa
cabbrev Q q
cabbrev Qa qa
cabbrev QA qa
cabbrev qA qa
cabbrev Wq wq
cabbrev wQ wq
cabbrev WQ wq
cabbrev Wqa wqa
cabbrev WQa wqa
cabbrev WQA wqa
" }}}

" {{{ commads
command! -nargs=* -bang QuitIfBufferIsLast if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1| q<bang> | else | bdelete<bang> | endif
" }}}

" {{{ mappings
" navigation (mappings)
nnoremap b<right> :bn<CR>
nnoremap b<left> :bp<CR>
nnoremap bl :bn<CR>
nnoremap bh :bp<CR>
" write and quit
nnoremap bd :QuitIfBufferIsLast<CR>
nnoremap bq :QuitIfBufferIsLast!<CR>
nnoremap bw :w<CR>
" }}}

" vim:ft=vim:foldmethod=marker
