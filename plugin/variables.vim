" gitgutter signs:
let g:gitgutter_sign_added = '+ '
let g:gitgutter_sign_modified = '≈ '
"let g:gitgutter_sign_removed = '⌐ '

" NERDTree:
let g:NERDTreeDirArrowExpandable = '»'
let g:NERDTreeDirArrowCollapsible = '¬'
let g:NERDTreeShowHidden = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeBookmarcsFile = "~/.local/share/nvim/NERDTreeBookmarks"

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

" vim:ft=vim
