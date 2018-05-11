" taken from: http://stackoverflow.com/questions/676600/vim-search-and-replace-selected-text/6171215#6171215
" ==========================================================================================================
" Escape special characters in a string for exact matching.
" This is useful to copying strings from the file to the search tool
" Based on this - http://peterodding.com/code/vim/profile/autoload/xolox/escape.vim
function! escape#string (string)
	let string=a:string
	" Escape regex characters
	let string = escape(string, '^$.*\/~[]')
	" Escape the line endings
	let string = substitute(string, '\n', '\\n', 'g')
	return string
endfunction

" Get the current visual block for search and replaces
" This function passed the visual block through a string escape function
" Based on this - http://stackoverflow.com/questions/676600/vim-replace-selected-text/677918#677918
function! escape#getvisual() range
	" Save the current register and clipboard
	let l:reg_save = getreg('"')
	let l:regtype_save = getregtype('"')
	let l:cb_save = &clipboard
	set clipboard&
	" Put the current visual selection in the " register
	normal! ""gvy
	let l:selection = getreg('"')
	" Put the saved registers and clipboards back
	call setreg('"', l:reg_save, l:regtype_save)
	let &clipboard = l:cb_save
	"Escape any special characters in the l:selection
	let l:escaped_selection = escape#string(l:selection)
	return l:escaped_selection
endfunction
