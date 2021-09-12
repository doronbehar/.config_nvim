" {{{1 netrw
" https://vi.stackexchange.com/questions/14622/how-can-i-close-the-netrw-buffer
let g:netrw_fastbrowse = 0
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

" {{{ Android:
let g:android_sdk_path = expand('$ANDROID_HOME')
" }}}

" {{{ WindowSwap
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader><leader>b :call WindowSwap#EasyWindowSwap()<CR>
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
" We don't want the <c-\> which I never use
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
" }}}

" {{{ editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
" }}}

" {{{ fzf.vim
command! -bar -bang -nargs=? -complete=buffer Buffers call
	\ fzf#vim#buffers(
	\ <q-args>,
	\ {'options': [
	\ '--bind=D:execute@nvr -c "bw $(echo {+1} | sed "s/\[\([0-9]\)\]/\1/g")"@+reload@nvr --remote-expr "join(map(fzf#vim#buflisted_sorted(), \"fzf#vim#format_buffer(v:val)\"), \"\n\")"@',
	\ '--multi'
	\ ]},
	\ <bang>0)
" }}}

" {{{ nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDComDefaultDelims = 1
" }}}

" {{{ fugitive
let g:fugitive_legacy_commands = 1
command! Gcommend Gcommit --amend --no-edit
let g:fugitive_gitlab_domains = [
	\ 'https://gitlab.gnome.org',
	\ 'https://gitlab.freedesktop.org'
	\]
" See :help fugitive-gitlab-config
let g:gitlab_api_keys = {
	\ 'gitlab.com': $GITLAB_API_PRIVATE_TOKEN,
	\}
" }}}

" {{{ gundo
let g:gundo_prefer_python3 = 1
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

" {{{ Dispatch
let g:dispatch_no_maps = 1
" }}}

" {{{ lf.vim
command! -nargs=+ LF call lf#LF(<f-args>, [
	\ '-command', 'map e push l',
	\ '-command', 'map O $gio open $f'
	\])
nnoremap <leader>e :LF %:p edit<CR>
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
if has('nvim-0.5.0')
	" see https://github.com/neoclide/coc.nvim/issues/1775
	let g:coc_disable_transparent_cursor = 1
endif


let g:coc_snippet_next = '<tab>'
" for coc-yank
nnoremap <leader>y :CocList yank<cr>
autocmd! CompleteDone * pclose!
" }}}

" {{{ ghost
let g:ghost_port = 4465
" }}}

" {{{ firenvim
let g:firenvim_config = {
	\ 'localSettings': {
		\ '.*': {
			\ 'selector': '',
			\ 'priority': 0,
			\ 'takeover': 'never',
		\ },
	\ }
\ }
if exists('g:started_by_firenvim')
	" set laststatus=0
	au BufEnter www.overleaf.com_* nnoremap <C-CR> <Esc>:w<CR>:call firenvim#eval_js('document.querySelector(".btn-recompile").click();')<CR>
	" au TextChanged * ++nested call firenvim_w#delaywrite()
	" au TextChangedI * ++nested call firenvim_w#delaywrite()
	" https://github.com/glacambre/firenvim#interacting-with-the-page
	nnoremap <Esc><Esc> :call firenvim#focus_page()<CR>
endif
" }}}

" {{{ AnsiEsc
" No reason why this script is living in this plugin
let g:loaded_cecutil = 1
" }}}

" vim:foldmethod=marker:ft=vim
