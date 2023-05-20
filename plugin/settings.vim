" {{{1 netrw
" https://vi.stackexchange.com/questions/14622/how-can-i-close-the-netrw-buffer
let g:netrw_fastbrowse = 0
" }}}

" {{{ Android:
let g:android_sdk_path = $ANDROID_HOME
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

" {{{ For localvimrc - https://github.com/embear/vim-localvimrc
" Store and restore decisions only if the answer was given in upper case (Y/N/A)
let g:localvimrc_persistent = 1
" The whole point of this plugin is not to rely on the sandbox, but to rely
" upon it's hash and persistent file
let g:localvimrc_sandbox = 0
let g:localvimrc_persistence_file = $HOME .. "/.local/share/nvim/localvimrc_persistent"
let g:localvimrc_name = [ ".vim/vimrc" ]
" }}}

" {{{ editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
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
	\ 'https://git.jami.net/',
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
