" {{{ NERDTree:
let g:NERDTreeDirArrowExpandable = '»'
let g:NERDTreeDirArrowCollapsible = '¬'
let g:NERDTreeShowHidden = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeBookmarksFile = expand('$HOME/.local/share/nvim/NERDTreeBookmarks')
" - disable Netrw:
let g:NERDTreeHijackNetrw = 1
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
if expand('$DISPLAY') ==# '$DISPLAY'
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
if expand('$DISPLAY') ==# '$DISPLAY'
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
let g:android_sdk_path = expand('$ANDROID_HOME')
" }}}

" {{{ peekaboo
" Compact display; do not display the names of the register groups
let g:peekaboo_compact = 1
let g:peekaboo_window = 'enew'
let g:peekaboo_prefix = '<leader>'
let g:peekaboo_ins_prefix = '<c-q>'
" }}}

" {{{ WindowSwap
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>b :call WindowSwap#EasyWindowSwap()<CR>
" }}}

" {{{ togglelist
let g:toggle_list_no_mappings = 1
augroup toggleList
	autocmd FileType * if &ft != 'tex' | nmap <silent> <leader>l :call ToggleLocationList()<CR> | endif
	autocmd FileType * if &ft != 'tex' | nmap <silent> <leader>q :call ToggleQuickfixList()<CR> | endif
augroup END
" }}}

" {{{ bbye
cabbrev bd Bdelete
cabbrev bdel Bdelete
cabbrev bdelete Bdelete
" }}}

" {{{ Rooter
let g:rooter_manual_only = 1
" }}}

" {{{ tmux-navigator
let g:tmux_navigator_disable_when_zoomed = 1
" }}}

" {{{ openbrowser
nmap gx <Plug>(openbrowser-open)
vmap gx <Plug>(openbrowser-open)
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

" {{{ pandoc
let g:pandoc#command#templates_file = split(&runtimepath, ',')[0] . '/pandoc-templates'
" Make sure I can diffrentiate between a '*' and a '-' in lists.
let g:pandoc#syntax#conceal#blacklist = [ 'list' ]
" Make sure no bibliography is used automatically
let g:pandoc#biblio#sources = 'bg'
" }}}

" {{{ nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDComDefaultDelims = 1
" }}}

" {{{ fugitive
command! Gcommend Gcommit --amend --no-edit
" }}}

" {{{ gundo
let g:gundo_prefer_python3 = 1
nnoremap <F5> :GundoToggle<CR>
" }}}

" {{{ sandwich
runtime macros/sandwich/keymap/surround.vim
let g:sandwich#recipes += [
\   {'buns': ['{ ', ' }'], 'nesting': 1, 'match_syntax': 1,
\    'kind': ['add', 'replace'], 'action': ['add'], 'input': ['{']},
\
\   {'buns': ['[ ', ' ]'], 'nesting': 1, 'match_syntax': 1,
\    'kind': ['add', 'replace'], 'action': ['add'], 'input': ['[']},
\
\   {'buns': ['( ', ' )'], 'nesting': 1, 'match_syntax': 1,
\    'kind': ['add', 'replace'], 'action': ['add'], 'input': ['(']},
\
\   {'buns': ['{\s*', '\s*}'],   'nesting': 1, 'regex': 1,
\    'match_syntax': 1, 'kind': ['delete', 'replace', 'textobj'],
\    'action': ['delete'], 'input': ['{']},
\
\   {'buns': ['\[\s*', '\s*\]'], 'nesting': 1, 'regex': 1,
\    'match_syntax': 1, 'kind': ['delete', 'replace', 'textobj'],
\    'action': ['delete'], 'input': ['[']},
\
\   {'buns': ['(\s*', '\s*)'],   'nesting': 1, 'regex': 1,
\    'match_syntax': 1, 'kind': ['delete', 'replace', 'textobj'],
\    'action': ['delete'], 'input': ['(']},
\ ]
" }}}

" {{{ coc
augroup CocKeys
	autocmd User CocNvimInit nmap gd <Plug>(coc-definition)
	autocmd User CocNvimInit nmap gD <Plug>(coc-implementation)
	autocmd User CocNvimInit nmap gt <Plug>(coc-type-definition)
	autocmd User CocNvimInit vmap <leader>p <Plug>(coc-format-selected)
	autocmd User CocNvimInit nmap <leader>p <Plug>(coc-format-selected)
	autocmd User CocNvimInit nmap <leader>i <Plug>(coc-diagnostic-info)
	autocmd User CocNvimInit nmap * <Plug>(coc-references)
	autocmd User CocNvimInit nmap <leader>r <Plug>(coc-rename)
	autocmd User CocNvimInit nmap ]q <Plug>(coc-diagnostic-next)
	autocmd User CocNvimInit nmap [q <Plug>(coc-diagnostic-prev)
augroup END
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
autocmd! CompleteDone * pclose!
" }}}

" {{{ ALE
let g:ale_enabled = 0
" }}}

" {{{ ghost
let g:ghost_port = 4465
" }}}

" {{{ vebugger
let g:vebugger_leader = "\\\'"
let g:vebugger_view_source_cmd='edit'
" }}}

" {{{ AnsiEsc
let g:loaded_cecutil = 1
" }}}

" {{{ Pad
let g:pad#dir = expand('$HOME/documents/notes')
let g:pad#open_in_split = 0
let g:pad#set_mappings = 0
" }}}

" vim:foldmethod=marker:ft=vim
