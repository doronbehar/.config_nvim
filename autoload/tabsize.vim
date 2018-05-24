" {{{1 Set tab size settings together mode
function! tabsize#set(size)
	let &tabstop=expand(a:size)
	let &shiftwidth=expand(a:size)
endfunction
