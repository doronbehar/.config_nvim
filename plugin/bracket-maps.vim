" {{{ arguments at the command-line
nnoremap [a :previous<CR>
nnoremap ]a :next<CR>
nnoremap [A :first<CR>
nnoremap ]A :last<CR>
" }}}

" {{{ buffers
nnoremap [b :bprevious<CR>
nnoremap ]b :bnext<CR>
nnoremap [B :bfirst<CR>
nnoremap ]B :blast<CR>
" }}}

" {{{ location list
nnoremap [l :lprevious<CR>
nnoremap ]l :lnext<CR>
nnoremap [L :lfirst<CR>
nnoremap ]L :llast<CR>
nnoremap [<C-L> :lpfile<CR>
nnoremap ]<C-L> :lnfile<CR>
" }}}

" {{{ Quickfix
nnoremap [f :cprevious<CR>
nnoremap ]f :cnext<CR>
nnoremap [F :cfirst<CR>
nnoremap ]F :clast<CR>
nnoremap [<C-F> :cpfile<CR>
nnoremap ]<C-F> :cnfile<CR>
" }}}

" {{{ tags
nnoremap [t :tprevious<CR>
nnoremap ]t :tnext<CR>
nnoremap [T :tfirst<CR>
nnoremap ]T :tlast<CR>
" }}}

" vim:ft=vim:foldmethod=marker
