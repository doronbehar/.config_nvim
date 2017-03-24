" command that sets up better "Wrap"
command! -nargs=* Wrap setlocal wrap linebreak breakindent nolist|
			\ map <silent> <buffer> j gj|
			\ map <silent> <buffer> k gk|
			\ map <silent> <buffer> 0 g0|
			\ map <silent> <buffer> $ g$
command! -nargs=* Nowrap setlocal nowrap nolinebreak nobreakindent list|
			\ unmap <silent> <buffer> j|
			\ unmap <silent> <buffer> k|
			\ unmap <silent> <buffer> 0|
			\ unmap <silent> <buffer> $

" vim:ft=vim:foldmethod=marker
