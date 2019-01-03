" {{{1 Toggle common rtl options vs ltr
function! rtl#set()
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
	if expand('$DISPLAY') !=# '$DISPLAY'
		setlocal listchars=tab:‹\ ,trail:-,extends:«,precedes:»,eol:⌐
	endif
	if has('nvim')
		set guicursor=
	endif
endfunction
function! rtl#unset()
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
	if expand('$DISPLAY') !=# '$DISPLAY'
		setlocal listchars=tab:›\ ,trail:-,extends:»,precedes:«,eol:¬
	endif
	if has('nvim')
		set guicursor=n-v-c:block
			\,i-ci-ve:ver25,r-cr:hor20,o:hor50
			\,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
			\,sm:block-blinkwait175-blinkoff150-blinkon175
	endif
endfunction
function! rtl#toggle()
	if &rightleft
		call rtl#unset()
	else
		call rtl#set()
	endif
endfunction

