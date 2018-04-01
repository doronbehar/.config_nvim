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

let b:surround_{char2nr("e")} = "\\begin{\1environment: \1}\n\t\r\n\\end{\1\1}"
let b:surround_{char2nr("c")} = "\\\1command: \1{\r}"
let b:surround_{char2nr("$")} = "$\r$"
