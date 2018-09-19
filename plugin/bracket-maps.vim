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

" {{{ quickfix list
nnoremap [f :lprevious<CR>
nnoremap ]f :lnext<CR>
nnoremap [F :lfirst<CR>
nnoremap ]F :llast<CR>
nnoremap [<C-F> :lpfile<CR>
nnoremap ]<C-F> :lnfile<CR>
" }}}

" {{{ tags
nnoremap [t :tprevious<CR>
nnoremap ]t :tnext<CR>
nnoremap [T :tfirst<CR>
nnoremap ]T :tlast<CR>
" }}}

" {{{ ale
nnoremap ]q :ALENext<CR>
nnoremap [q :ALEPrevious<CR>
" }}}

" vim:ft=vim:foldmethod=marker
