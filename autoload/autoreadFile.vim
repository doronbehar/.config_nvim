function! autoreadFile#set()
	augroup autoreadFile
		" Triger `autoread` when files changes on disk
		" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
		" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
		autocmd FocusGained,BufEnter,CursorHold,CursorHoldI <buffer> if mode() != 'c' | checktime | endif
		" Notification after file change
		" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
		autocmd FileChangedShellPost <buffer> echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
	augroup END
endfunction

function! autoreadFile#unset()
	augroup! autoreadFile
endfunction

function! autoreadFile#toggle()
	if exists('#autoreadFile')
		call autoreadFile#unset()
	else
		call autoreadFile#set()
	endif
endfunction
