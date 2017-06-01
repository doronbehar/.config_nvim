" {{{ Gitgutter:
let g:gitgutter_sign_added = '+ '
if expand("$DISPLAY") != "$DISPLAY"
	let g:gitgutter_sign_modified = '≈ '
else
	let g:gitgutter_sign_modified = '_ '
end
let g:gitgutter_sign_removed = '- '
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
  
else
	let g:airline_symbols.maxlinenr = 'Ξ'
	let g:airline_theme = 'powerlineish'
	let g:airline_powerline_fonts = 1
end
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_c = 0
" disable file encoding if width is smaller than 60:
call airline#parts#define_minwidth('ffenc', 45)
" }}}

" {{{ devicons
if expand("$DISPLAY") == "$DISPLAY"
	let g:webdevicons_enable = 0
end
" }}}

" {{{ Tmux vim navigator - Window movement:
nnoremap <C-j> :TmuxNavigateDown<CR>
nnoremap <C-h> :TmuxNavigateLeft<CR>
nnoremap <C-\> :TmuxNavigatePrevious<CR>
nnoremap <C-l> :TmuxNavigateRight<CR>
nnoremap <C-k> :TmuxNavigateUp<CR>
let g:tmux_navigator_disable_when_zoomed = 1
" }}}

" {{{ easymotion:
" match the easymotion idea of word movement ot mine just like in
" plugin/my-mappings.vim
map <leader><leader>w <Plug>(easymotion-b)
map <leader><leader>W <Plug>(easymotion-B)
map <leader><leader>ge <Plug>(easymotion-w)
map <leader><leader>gE <Plug>(easymotion-W)
map <leader><leader>gw <Plug>(easymotion-ge)
map <leader><leader>gW <Plug>(easymotion-gE)
let g:EasyMotion_keys = 'asdfghjklqweruio'
" }}}

" {{{ Android:
let g:android_sdk_path = expand("$ANDROID_HOME")
" }}}

" {{{ todo.txt
let g:todo_load_python=0
" }}}

" {{{ peekaboo
" Compact display; do not display the names of the register groups
let g:peekaboo_compact = 1
let g:peekaboo_window = "enew"
let g:peekaboo_prefix = '<leader>'
let g:peekaboo_ins_prefix = '<c-q>'
" }}}

" {{{ vimtex
if !has('clientserver')
	let g:vimtex_latexmk_progname = 'nvr'
endif
let g:tex_flavor = 'latex'
let g:vimtex_fold_enabled = 1
let g:vimtex_fold_envs = 0
let g:vimtex_indent_ignored_envs = ['document', 'hebrew', 'english']
" }}}

" {{{ bufexplorer
let g:bufExplorerDisableDefaultKeyMapping=1
let g:bufExplorerDetailedHelp=1
let g:bufExplorerShowRelativePath=0
nnoremap gb :ToggleBufExplorer<CR>
" }}}

" {{{ tw
let g:task_rc_override='confirmation=off'
" }}}

" vim:foldmethod=marker:ft=vim
