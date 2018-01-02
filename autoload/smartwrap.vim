" {{{1 Toggle advaneced wrap mode
function! smartwrap#set()
	setlocal wrap
	setlocal linebreak
	setlocal breakindent
	setlocal nolist
	silent! map <silent> <buffer> j gj
	silent! map <silent> <buffer> k gk
	silent! map <silent> <buffer> 0 g0
	silent! map <silent> <buffer> $ g$
endfunction
function! smartwrap#unset()
	setlocal nowrap
	setlocal nolinebreak
	setlocal nobreakindent
	setlocal list
	silent! unmap <silent> <buffer> j
	silent! unmap <silent> <buffer> k
	silent! unmap <silent> <buffer> 0
	silent! unmap <silent> <buffer> $
endfunction
function! smartwrap#toggle()
	if &wrap
		call smartwrap#unset()
	else
		call smartwrap#set()
	endif
endfunction

" {{{1 modeline
" vim:foldmethod=marker:ft=vim
