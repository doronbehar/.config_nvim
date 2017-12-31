function! insertpaste#setup() abort
	let s:paste = &paste
	let s:mouse = &mouse
	set paste
	set mouse=
	augroup insertpaste
		autocmd!
		autocmd InsertLeave *
					\ if exists('s:paste') |
					\	 let &paste = s:paste |
					\	 let &mouse = s:mouse |
					\	 unlet s:paste |
					\	 unlet s:mouse |
					\ endif |
					\ autocmd! insertpaste
	augroup END
endfunction
