function! paragraph#set()
	setlocal formatoptions+=a
	setlocal formatoptions
endfunction

function! paragraph#unset()
	setlocal formatoptions-=a
	setlocal formatoptions
endfunction

function! paragraph#toggle()
	if match(&formatoptions, 'a') != -1
		call paragraph#unset()
	else
		call paragraph#set()
	endif
endfunction
