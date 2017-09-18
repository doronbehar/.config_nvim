command! TikzSetAutoCmdToConvertToSVG autocmd BufWritePost <buffer> execute('silent !pdf2svg ' . expand('%:r') . '.pdf ' . expand('%:r') . '.svg')
if has('nvim')
	let g:vimtex_compiler_progname = 'nvr'
endif
omap ysc <plug>(vimtex-cmd-create)
xmap ysc <plug>(vimtex-cmd-create)
nmap ysc <plug>(vimtex-cmd-create)
let g:tex_flavor = 'latex'
let g:vimtex_fold_enabled = 1
let g:vimtex_fold_types_defaults = {
			\	'preamble' : {},
			\	'comments' : {
			\		'enabled' : 0
			\	},
			\	'envs' : {
			\		'blacklist' : [
			\			'hebrew',
			\			'english'
			\	],
			\		'whitelist' : [],
			\	},
			\	'env_options' : {},
			\	'markers' : {},
			\	'sections' : {
			\		'sections' : [
			\			'part',
			\			'chapter',
			\			'section',
			\			'subsection',
			\			'subsubsection',
			\		],
			\		'parts' : [
			\			'appendix',
			\			'frontmatter',
			\			'mainmatter',
			\			'backmatter',
			\		],
			\	},
			\	'cmd_single' : {
			\		'cmds' : [
			\			'hypersetup',
			\			'tikzset',
			\			'pgfplotstableread',
			\		],
			\	},
			\	'cmd_single_opt' : {
			\		'cmds' : [
			\			'usepackage',
			\			'includepdf',
			\		],
			\	},
			\	'cmd_multi' : {
			\		'cmds' : [
			\			'%(re)?new%(command|environment)',
			\			'providecommand',
			\			'presetkeys',
			\			'Declare%(Multi|Auto)?CiteCommand',
			\			'Declare%(Index)?%(Field|List|Name)%(Format|Alias)',
			\		],
			\	},
			\	'cmd_addplot' : {
			\		'cmds' : [
			\			'addplot[+3]?',
			\		],
			\	},
			\}
