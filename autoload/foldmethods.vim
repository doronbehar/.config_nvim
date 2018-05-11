" {{{1 Cycle through the foldmethods.
function! foldmethods#cycle()
	let s:opts = ['manual', 'indent', 'expr', 'marker', 'syntax', 'diff']
	let s:index = 0
	while 1
		if &foldmethod == s:opts[s:index]
			if s:index == len(s:opts) - 1
				let &l:foldmethod=s:opts[0]
			else
				let &l:foldmethod=s:opts[s:index+1]
			endif
			break
		endif
		if s:index == len(s:opts) - 1
			let s:index = 0
		else
			let s:index = s:index + 1
		endif
	endwhile
	echo 'Foldmethod is'&foldmethod 'Now'
endfunction
