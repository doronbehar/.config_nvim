" {{{ xkbswitch
if expand("$DISPLAY") != "$DISPLAY"
	let g:XkbSwitchEnabled = 1
	if !(has('win64') || has('win32') || has('win16'))
		let g:os = system('uname -a')
	endif
	if has('unix')
		if g:os =~ "ARCH"
			let g:XkbSwitchLib = '/usr/lib/libxkbswitch.so'
		else
			let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.so'
		endif
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

" {{{ togglelist
let g:toggle_list_no_mappings = 1
autocmd FileType * if &ft != 'tex' | nmap <silent> <leader>l :call ToggleLocationList()<CR> | endif
autocmd FileType * if &ft != 'tex' | nmap <silent> <leader>q :call ToggleQuickfixList()<CR> | endif
" }}}

" {{{ bbye
cabbrev bd Bdelete
cabbrev bdel Bdelete
cabbrev bdelete Bdelete
" }}}

" {{{ Rooter
let g:rooter_silent_chdir = 1
let g:rooter_manual_only = 1
augroup rooter
  autocmd!
  autocmd VimEnter,BufEnter * :call setbufvar('%', 'rootDir', '') | :Rooter
augroup END
" }}}

" {{{ tmux-navigator
let g:tmux_navigator_disable_when_zoomed = 1
" }}}

" {{{ open-url
nmap gx <Plug>(open-url-browser)
vmap gx <Plug>(open-url-browser)
" }}}

" {{{ highlitedyank
let g:highlightedyank_highlight_duration = 250
if !exists('##TextYankPost')
	map y <Plug>(highlitedyank)
endif
" }}}

" {{{ editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
" }}}

" {{{ emmet
let g:user_emmet_install_global = 0
" }}}

" vim:foldmethod=marker:ft=vim
