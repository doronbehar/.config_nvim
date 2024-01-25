" Without this check, opening the target file fails due to NixInit redefined
" while in use error.
if !exists("*NixInit")
	function! NixInit(...)
		if a:1 == ''
			let l:target = expand('%:p')
		else
			let l:target = a:1
			execute('edit ' .. l:target)
		endif
		execute('terminal nix-init ' .. l:target)
		startinsert
	endfunction
endif
command! -buffer -complete=file -nargs=? NixInit call NixInit(<q-args>)
