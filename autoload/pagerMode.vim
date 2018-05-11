" {{{1 Toggle pager mode
function! pagerMode#set()
	nnoremap j <C-e>
	nnoremap k <C-y>
endfunction
function! pagerMode#unset()
	unmap j
	unmap k
endfunction
function! pagerMode#toggle()
	if mapcheck('j') !=# ''
		call pagerMode#unset()
	else
		call pagerMode#set()
	endif
endfunction

