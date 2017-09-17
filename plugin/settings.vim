" {{{ xkbswitch
if expand("$DISPLAY") != "$DISPLAY"
	let g:XkbSwitchEnabled = 1
	if has('unix')
		let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.so'
	elseif has('mac')
		let g:XkbSwitchLib = '/usr/local/lib/libInputSourceSwitcher.dylib'
	endif
	let g:XkbSwitchSkipGhKeys = ['gh']
end
" }}}

" {{{ NERDTree:
let g:NERDTreeDirArrowExpandable = '»'
let g:NERDTreeDirArrowCollapsible = '¬'
let g:NERDTreeShowHidden = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeBookmarksFile = expand("$HOME/.local/share/nvim/NERDTreeBookmarks")
" - disable Netrw:
let g:NERDTreeHijackNetrw = 1
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
" - open NERDTree faster:
cabbrev D NERDTree
" - mappings:
let g:NERDTreeMapJumpNextSibling = ''
let g:NERDTreeMapJumpPrevSibling = ''
" }}}

" {{{ Airline:
let g:airline#extensions#disable_rtp_load = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#branch#format = 0
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
if expand("$DISPLAY") == "$DISPLAY"
	let g:airline_powerline_ascii = 1
	let g:airline_symbols.maxlinenr = ''
	let g:airline_symbols.linenr = ' '
	let g:airline_symbols.crypt = 'crypt'
	let g:airline_symbols.branch = '|'
	let g:airline_symbols.whitespace = ' '
	let g:airline#extensions#whitespace#symbol = '!'
	let g:airline_symbols.keymap = 'KEYS:'
else
	let g:airline_symbols.maxlinenr = 'Ξ'
	let g:airline_powerline_fonts = 1
	let g:airline_symbols.keymap = '⌨'
end
" }}}

" {{{ devicons
if expand("$DISPLAY") == "$DISPLAY"
	let g:webdevicons_enable = 0
end
" }}}

" {{{ easymotion:
" match the easymotion idea of word movement ot mine just like in
" plugin/my-mappings.vim
map <Leader> <Plug>(easymotion-prefix)
map <leader>w <Plug>(easymotion-b)
map <leader>W <Plug>(easymotion-B)
map <leader>ge <Plug>(easymotion-w)
map <leader>gE <Plug>(easymotion-W)
map <leader>gw <Plug>(easymotion-ge)
map <leader>gW <Plug>(easymotion-gE)
let g:EasyMotion_keys = 'asdfghjklqweruio'
" }}}

" {{{ Android:
let g:android_sdk_path = expand("$ANDROID_HOME")
" }}}

" {{{ peekaboo
" Compact display; do not display the names of the register groups
let g:peekaboo_compact = 1
let g:peekaboo_window = "enew"
let g:peekaboo_prefix = '<leader>'
let g:peekaboo_ins_prefix = '<c-q>'
" }}}

" {{{ vimtex
if has('nvim')
	let g:vimtex_compiler_progname = 'nvr'
endif
imap ysc <plug>(vimtex-cmd-create)
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
" }}}

" {{{ bufexplorer
let g:bufExplorerDisableDefaultKeyMapping=1
let g:bufExplorerDetailedHelp=1
let g:bufExplorerShowRelativePath=0
nnoremap gb :ToggleBufExplorer<CR>
" }}}

" {{{ WindowSwap
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>b :call WindowSwap#EasyWindowSwap()<CR>
" }}}

" {{{ bbye
cabbrev bd Bdelete
cabbrev bdel Bdelete
cabbrev bdelete Bdelete
" }}}

" {{{ Rooter
let g:rooter_silent_chdir = 1
" }}}

" {{{ pencil
let g:pencil#wrapModeDefault = 'soft'
" vim-pandoc takes care of this well enough
let g:pencil#conceallevel = 0
let g:pencil#concealcursor = 'c'
function! Prose()
	packadd pencil
	setlocal spell
	let g:airline_section_x = '%{PencilMode()}'
endfunction
" }}}

" vim:foldmethod=marker:ft=vim
