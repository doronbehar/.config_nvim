" Plugin usefull for those of us who work with bidirectional languages while
" using LaTeX, markdown and HTML

" {{{ function Toggle_rtl() : toggle settings for rightleft and word-movement
function! g:Toggle_rtl()
	if &rightleft
		setlocal norightleft
		noremap <silent> <buffer> w b
		noremap <silent> <buffer> W B
		noremap <silent> <buffer> gw ge
		noremap <silent> <buffer> gW gE
		noremap <silent> <buffer> ge w
		noremap <silent> <buffer> gE W
		noremap <silent> <buffer> e e
		noremap <silent> <buffer> E E
	else
		setlocal rightleft
		noremap <silent> <buffer> w e
		noremap <silent> <buffer> W E
		noremap <silent> <buffer> e b
		noremap <silent> <buffer> E B
		noremap <silent> <buffer> gw w
		noremap <silent> <buffer> gW W
		noremap <silent> <buffer> ge ge
		noremap <silent> <buffer> gE gE
	endif
endfunction
" }}}

" {{{ mappings
noremap <F12> :call Toggle_rtl()<CR>
" }}}

" vim:ft=vim:foldmethod=marker
