command! TikzSetAutoCmdToConvertToSVG autocmd BufWritePost <buffer> execute('silent !pdf2svg ' . expand('%:r') . '.pdf ' . expand('%:r') . '.svg')
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
" https://github.com/lervag/vimtex/issues/3154
let g:vimtex_compiler_method =
	\ empty($VIMTEX_COMPILER_METHOD) ? 'tectonic' : $VIMTEX_COMPILER_METHOD
let g:vimtex_compiler_tectonic = {
	\'out_dir' : '',
	\'hooks' : [],
	\'options' : [
	\	'--keep-logs',
	\	'--synctex',
	\	'-Zshell-escape',
	\	'-Zshell-escape-cwd=.'
	\],
\}
" Clean minted cache files of \inputminted
let g:vimtex_compiler_clean_paths = [ '_minted*' ]
if executable('pplatex')
	let g:vimtex_quickfix_method = 'pplatex'
endif

" Can be a bit annoying, especially when writing hebrew, so disable it
" altogether.
let b:lexima_disabled = 1
" Add a surrounding \textenglish latex command, relies upon vim-sandwich and
" vimtex of course
xmap SE Sctextenglish<cr>
