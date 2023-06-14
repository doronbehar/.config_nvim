command! TikzSetAutoCmdToConvertToSVG autocmd BufWritePost <buffer> execute('silent !pdf2svg ' . expand('%:r') . '.pdf ' . expand('%:r') . '.svg')
if has('nvim')
	let g:vimtex_compiler_progname = 'nvr'
endif
setlocal spell
call smartwrap#set()
let g:vimtex_fold_enabled = 1
let g:vimtex_fold_types = {
	\'envs' : {
	\	'blacklist' : [
	\		'hebrew',
	\		'english'
	\	]
	\}
\}
let g:vimtex_compiler_method = 'tectonic'
let g:vimtex_compiler_tectonic = {
	\'out_dir' : '',
	\'hooks' : [],
	\'options' : [
	\	'--keep-logs',
	\	'--synctex',
	\	'-Zshell-escape',
	\	'-Zshell-escape-cwd=$PWD'
	\],
\}
if executable('pplatex')
	let g:vimtex_quickfix_method = 'pplatex'
endif
" Add a surrounding \textenglish latex command, relies upon vim-sandwich and
" vimtex of course
xmap SE Sctextenglish<cr>
