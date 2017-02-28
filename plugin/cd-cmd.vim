" {{{ create command to cd into the directory of the current file
command! -nargs=* Cd cd %:p:h
cabbrev CD Cd
" }}}

" vim:ft=vim:foldmethod=marker
