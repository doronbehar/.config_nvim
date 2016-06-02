" taken from http://vim.wikia.com/wiki/VimTip1008.
function! wikia#tip1008#GetBufferList()
	redir => buflist
	silent! ls!
	redir END
	return buflist
endfunction

function! wikia#tip1008#ToggleList(bufname, pfx)
	let buflist = wikia#tip1008#GetBufferList()
	for bufnum in map(filter(split(buflist, '\n'), 'v:val =~ "'.a:bufname.'"'), 'str2nr(matchstr(v:val, "\\d\\+"))')
		if bufwinnr(bufnum) != -1
			exec(a:pfx.'close')
			return
		endif
	endfor
	if a:pfx == 'l' && len(getloclist(0)) == 0
		echohl ErrorMsg
		echo "Location List is Empty."
		return
	endif
	let winnr = winnr()
	exec(a:pfx.'open')
	if winnr() != winnr
		wincmd p
	endif
endfunction
