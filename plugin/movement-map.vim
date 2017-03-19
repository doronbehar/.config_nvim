" {{{ Words - Uses e and w only (and g for special movement).
noremap b <nop>
noremap B <nop>
noremap w b
noremap W B
noremap gw ge
noremap gW gE
noremap ge w
noremap gE W
" }}}

" {{{ Jumping up/down to the non-white character of the line
noremap <C-m> -
noremap <C-n> <C-m>
" Remove useless motion mappings
noremap <C-p> <nop>
" }}}

" vim:ft=vim:foldmethod=marker
