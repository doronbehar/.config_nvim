setlocal foldmethod=indent

function! s:jump_to_current_line()
	if getwininfo(win_getid())[0]['loclist']
		execute('.ll')
	else
		execute('.cc')
	endif
endfunction

nnoremap <buffer> <CR> :call <SID>jump_to_current_line()<CR>
