setlocal foldmethod=indent

function! s:jump_to_current_line()
	let l:qf_type = airline#extensions#quickfix#get_type()
	if l:qf_type == g:airline#extensions#quickfix#location_text
		execute('.ll')
	elseif l:qf_type == g:airline#extensions#quickfix#quickfix_text
		execute('.cc')
	endif
endfunction

nnoremap <silent> <buffer> <CR> :call <SID>jump_to_current_line()<CR>
