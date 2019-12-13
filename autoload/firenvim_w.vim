" https://github.com/glacambre/firenvim#automatically-syncing-changes-to-the-page

if !exists('g:started_by_firenvim')
	finish
endif

let g:firenvim_w#dont_write = v:false
function! firenvim_w#write(timer) abort
	let g:firenvim_w#dont_write = v:false
	write
endfunction

function! firenvim_w#delaywrite() abort
	if g:firenvim_w#dont_write
		return
	end
	let g:firenvim_w#dont_write = v:true
	call timer_start(1000, 'firenvim_w#write')
endfunction
