" {{{ Gitgutter:
let g:gitgutter_sign_added = '+ '
let g:gitgutter_sign_modified = '≈ '
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
command! -nargs=* EX e %:p:h
cabbrev ex EX
cabbrev Ex EX
cabbrev eX EX
" - open NERDTree faster:
cabbrev D NERDTree
" - open automatically NERDTree when no file is specified:
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" - mappings:
let g:NERDTreeMapJumpNextSibling = ''
let g:NERDTreeMapJumpPrevSibling = ''
" }}}

" {{{ Airline:
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.maxlinenr = 'Ξ'
let g:airline_theme = 'powerlineish'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_section_c = 0
" disable file encoding if width is smaller than 60:
call airline#parts#define_minwidth('ffenc', 45)
" }}}

" {{{ Tmux vim navigator - Window movement:
nnoremap <C-j> :TmuxNavigateDown<CR>
nnoremap <C-h> :TmuxNavigateLeft<CR>
nnoremap <C-\> :TmuxNavigatePrevious<CR>
nnoremap <C-l> :TmuxNavigateRight<CR>
nnoremap <C-k> :TmuxNavigateUp<CR>
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

" {{{ Buffergator:
let g:buffergator_viewport_split_policy="B"
let g:buffergator_split_size=10
let g:buffergator_sort_regime="mru"
let g:buffergator_display_regime="filepath"
let g:buffergator_show_full_directory_path=1
let g:buffergator_suppress_keymaps=1
let g:buffergator_window_statusline=0
let g:buffergator_tab_statusline=0
nnoremap <leader>b :BuffergatorToggle<CR>
autocmd FileType buffergator nnoremap <esc> :BuffergatorClose<CR>
nnoremap <leader>t :BuffergatorTabsToggle<CR>
nnoremap [b :BuffergatorMruCyclePrev<CR>
nnoremap ]b :BuffergatorMruCycleNext<CR>
" }}}

" {{{ Android:
let g:android_sdk_path = expand("$ANDROID_HOME")
" }}}

" {{{
let g:todo_load_python=0
" }}}

" vim:foldmethod=marker:ft=vim
