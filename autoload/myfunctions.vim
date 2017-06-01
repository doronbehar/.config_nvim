" {{{1 Cycle through the foldmethods.
function! myfunctions#cycle_foldmethods()
	let s:opts = ['manual', 'indent', 'expr', 'marker', 'syntax', 'diff']
	let s:index = 0
	while 1
		if &foldmethod == s:opts[s:index]
			if s:index == len(s:opts) - 1
				let &l:foldmethod=s:opts[0]
			else
				let &l:foldmethod=s:opts[s:index+1]
			endif
			break
		endif
		if s:index == len(s:opts) - 1
			let s:index = 0
		else
			let s:index = s:index + 1
		endif
	endwhile
	echo "Foldmethod is"&fdm "Now"
endfunction

" {{{1 Toggle common rtl options vs ltr
function! myfunctions#toggle_rtl()
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
		setlocal keymap=
		setlocal listchars+=eol:¬
		if has('nvim')
			set guicursor=n-v-c:block
				\,i-ci-ve:ver25,r-cr:hor20,o:hor50
				\,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
				\,sm:block-blinkwait175-blinkoff150-blinkon175
		end
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
		setlocal keymap=hebrew
		setlocal listchars+=eol:⌐
		if has('nvim')
			set guicursor=
		end
	endif
endfunction

" {{{1 Toggle advaneced wrap mode
function! myfunctions#toggle_smartwrap()
	if &wrap
		setlocal nowrap
		setlocal nolinebreak
		setlocal nobreakindent
		setlocal list
		unmap <silent> <buffer> j
		unmap <silent> <buffer> k
		unmap <silent> <buffer> 0
		unmap <silent> <buffer> $
	else
		setlocal wrap
		setlocal linebreak
		setlocal breakindent
		setlocal nolist
		map <silent> <buffer> j gj
		map <silent> <buffer> k gk
		map <silent> <buffer> 0 g0
		map <silent> <buffer> $ g$
	endif
endfunction

" {{{1 modeline
" vim:foldmethod=marker:ft=vim
