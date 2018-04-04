function! pandoc_vars#toggle_autoexec_on_writes()
	if exists('g:pandoc#command#autoexec_on_writes') || g:pandoc#command#autoexec_on_writes == 0
		let g:pandoc#command#autoexec_on_writes = 1
	else
		let g:pandoc#command#autoexec_on_writes = 0
	endif
endfunction

function! pandoc_vars#set_autoexec_command(...)
	let g:pandoc#command#autoexec_command = join(a:000, ' ')
endfunction
