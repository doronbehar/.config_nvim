" {{{1 Toggle pager mode
function! pagerMode#set()
	nnoremap <silent> <buffer> j <C-e>
	nnoremap <silent> <buffer> k <C-y>
endfunction
function! pagerMode#unset()
	silent! unmap <silent> <buffer> j
	silent! unmap <silent> <buffer> k
endfunction
function! pagerMode#toggle()
	if mapcheck('j') !=# ''
		call pagerMode#unset()
	else
		call pagerMode#set()
	endif
endfunction

