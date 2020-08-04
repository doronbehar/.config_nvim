" {{{ windows resizing
nnoremap <C-Up> <C-W>+
nnoremap <C-Down> <C-W>-
nnoremap <C-Right> <C-W>>
nnoremap <C-Left> <C-W><
" }}}

" {{{ windows scrolling
if has('nvim')
	noremap <A-i> zl
	noremap <A-u> zh
	noremap <A-j> jzz
	noremap <A-k> kzz
else
	noremap i zl
	noremap u zh
	noremap j jzz
	noremap k kzz
endif
" }}}
