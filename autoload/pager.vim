" {{{1 Toggle pager mode
function! pager#set()
	nnoremap <silent> <buffer> j <C-e>
	nnoremap <silent> <buffer> k <C-y>
endfunction
function! pager#unset()
	silent! unmap <silent> <buffer> j
	silent! unmap <silent> <buffer> k
endfunction
function! pager#toggle()
	if mapcheck('j') !=# ''
		call pager#unset()
	else
		call pager#set()
	endif
endfunction

