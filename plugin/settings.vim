" gitgutter signs:
let g:gitgutter_sign_added = '+ '
let g:gitgutter_sign_modified = '≈ '
let g:gitgutter_sign_removed = '- '

" NERDTree:
let g:NERDTreeDirArrowExpandable = '»'
let g:NERDTreeDirArrowCollapsible = '¬'
let g:NERDTreeShowHidden = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeBookmarksFile = expand("$HOME/.local/share/nvim/NERDTreeBookmarks")
" disable Netrw:
let g:NERDTreeHijackNetrw = 1
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
command! -nargs=* EX e %:p:h
cabbrev ex EX
cabbrev Ex EX
cabbrev eX EX
" open NERDTree faster:
cabbrev D NERDTree
" open automatically NERDTree when no file is specified:
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" airline:
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

" GitGutter:
" make change gitgutter's signs refresh easier to type
command! -nargs=* GGE GitGutterEnable
command! -nargs=* GGD GitGutterDisable
"GitGutterToggle
command! -nargs=* GGSE GitGutterSignsEnable
command! -nargs=* GGSD GitGutterSignsDisable
"GitGutterSignsToggle
command! -nargs=* GGHE GitGutterLineHighlightsEnable
command! -nargs=* GGHD GitGutterLineHighlightsDisable
"GitGutterLineHighlightsToggle

" Tmux vim navigator - Window movement:
nnoremap <C-j> :TmuxNavigateDown<CR>
nnoremap <C-h> :TmuxNavigateLeft<CR>
nnoremap <C-\> :TmuxNavigatePrevious<CR>
nnoremap <C-l> :TmuxNavigateRight<CR>
nnoremap <C-k> :TmuxNavigateUp<CR>

" Rename:
cabbrev rename Rename
cabbrev rn Rename

" Tabmerge:
cabbrev tabmerge Tabmerge
cabbrev tm Tabmerge

" index-search:
let g:indexed_search_max_hits=200
let g:indexed_search_shortmess=1
let g:indexed_search_numbered_only=1

" easymotion:
" match the easymotion idea of word movement ot mine just like in
" plugin/my-mappings.vim
map <leader><leader>w <Plug>(easymotion-b)
map <leader><leader>W <Plug>(easymotion-B)
map <leader><leader>ge <Plug>(easymotion-w)
map <leader><leader>gE <Plug>(easymotion-W)
map <leader><leader>gw <Plug>(easymotion-ge)
map <leader><leader>gW <Plug>(easymotion-gE)
let g:EasyMotion_keys = 'asdfghjklqweruio'

" vim-move:
let g:move_map_keys = 0
vmap <A-n> <Plug>MoveBlockDown
vmap <A-m> <Plug>MoveBlockUp
nmap <A-n> <Plug>MoveLineDown
nmap <A-m> <Plug>MoveLineUp
