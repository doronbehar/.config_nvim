" {{{1 Toggle common rtl options vs ltr
function! rtl#set()
	if $MLTERM ==# '' && $VTE_VERSION ==# ''
		setlocal rightleft
	else
		noremap h l
		noremap l h
	endif
	echomsg 'keymap=hebrew'
	setlocal keymap=hebrew
	noremap <silent> <buffer> w e
	noremap <silent> <buffer> W E
	noremap <silent> <buffer> e b
	noremap <silent> <buffer> E B
	noremap <silent> <buffer> gw w
	noremap <silent> <buffer> gW W
	noremap <silent> <buffer> ge ge
	noremap <silent> <buffer> gE gE
	if $DISPLAY !=# ''
		setlocal listchars=tab:‹\ ,trail:-,extends:«,precedes:»,eol:⌐
	endif
	if has('nvim')
		set guicursor=
	endif
endfunction
function! rtl#unset()
	if $MLTERM ==# '' && $VTE_VERSION ==# ''
		setlocal norightleft
	else
		unmap l
		unmap h
	endif
	echomsg 'keymap='
	setlocal keymap=
	noremap <silent> <buffer> w b
	noremap <silent> <buffer> W B
	noremap <silent> <buffer> gw ge
	noremap <silent> <buffer> gW gE
	noremap <silent> <buffer> ge w
	noremap <silent> <buffer> gE W
	noremap <silent> <buffer> e e
	noremap <silent> <buffer> E E
	if $DISPLAY !=# ''
		setlocal listchars=tab:›\ ,trail:-,extends:»,precedes:«,eol:¬
	endif
	if has('nvim')
		set guicursor=n-v-c:block
			\,i-ci-ve:ver25,r-cr:hor20,o:hor50
			\,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
			\,sm:block-blinkwait175-blinkoff150-blinkon175
	endif
endfunction
" Lucky I don't speak more languages
function! rtl#toggle()
	if &keymap ==# 'hebrew'
		call rtl#unset()
	else
		call rtl#set()
	endif
endfunction

