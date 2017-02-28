" {{{ markdown : spellchecking, wrap and *___*; **___**; `___`; [___]()
autocmd Filetype markdown setlocal spell
autocmd Filetype markdown Wrap
" - **Bold**
autocmd Filetype markdown vnoremap <buffer> <leader>b "mc****<Esc>h"mP
" - *Italic*
autocmd Filetype markdown vnoremap <buffer> <leader>i "mc**<Esc>"mP
" - `Code`
autocmd Filetype markdown vnoremap <buffer> <leader>c "mc``<Esc>"mP
" - [link]()
autocmd Filetype markdown vnoremap <buffer> <leader>l "mc[]()<Esc>hh"mPlla
" }}}

" {{{ gitcommit: spellcheck
autocmd Filetype gitcommit setlocal spell
" }}}

" {{{ todo.txt
autocmd Filetype todo Wrap
" }}}

" vim:ft=vim:foldmethod=marker
