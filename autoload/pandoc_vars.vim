function! pandoc_vars#toggle_autoexec_on_writes()
	if ! get(g:, 'pandoc#command#autoexec_on_writes', 0)
		let g:pandoc#command#autoexec_on_writes = 1
		if exists('g:pandoc#command#autoexec_command')
			echomsg 'starting to execute pandoc on writes, with ' . g:pandoc#command#autoexec_command
		else
			echomsg 'starting to execute pandoc on writes, no command was set with though'
		endif
	else
		let g:pandoc#command#autoexec_on_writes = 0
		echomsg 'stopped executing pandoc on writes'
	endif
endfunction

function! pandoc_vars#set_autoexec_command(...)
	let g:pandoc#command#autoexec_command = join(a:000, ' ')
endfunction
