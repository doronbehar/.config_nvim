command! TikzSetAutoCmdToConvertToSVG autocmd BufWritePost <buffer> execute('silent !pdf2svg ' . expand('%:r') . '.pdf ' . expand('%:r') . '.svg')
if has('nvim')
	let g:vimtex_compiler_progname = 'nvr'
endif
setlocal spell
call smartwrap#set()
let g:vimtex_fold_enabled = 1
let g:vimtex_fold_types = {
			\	'envs' : {
			\		'blacklist' : [
			\			'hebrew',
			\			'english'
			\		]
			\	}
			\}
let g:vimtex_compiler_method = 'tectonic'
" Add a surrounding \textenglish latex command, relies upon vim-sandwich and
" vimtex of course
xmap SE Sctextenglish<cr>
