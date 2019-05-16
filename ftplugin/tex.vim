command! TikzSetAutoCmdToConvertToSVG autocmd BufWritePost <buffer> execute('silent !pdf2svg ' . expand('%:r') . '.pdf ' . expand('%:r') . '.svg')
let b:ale_linters = ['textlint']
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
