" {{{ <leader>[sS] : find the visually selected text
vnoremap <leader>s <Esc>/<c-r>=stackoverflow#a6171215#GetVisual()<CR><CR>
" whole words only.
vnoremap <leader>S <Esc>/\<<c-r>=stackoverflow#a6171215#GetVisual()<CR>\><CR>
" }}}

" {{{ <leader>[rR] : Start the find and replace command across the entire file with a visually selected text.
vnoremap <leader>r <Esc>:%s/<c-r>=stackoverflow#a6171215#GetVisual()<CR>//gc<left><left><left>
" Whole words only.
vnoremap <leader>R <Esc>:%s/\<<c-r>=stackoverflow#a6171215#GetVisual()<CR>\>//gc<left><left><left>
" }}}

" {{{ <leader>[l<esc>] : syntax highlighting options
" toggle set hlsearc setting:
nnoremap <leader>l :set hlsearch! hlsearch?<CR>
" Create a mapping to sync syntax:
nnoremap <leader><esc> :syntax sync fromstart<CR>
" }}}

" {{{ <leader>q : better way to enter Ex mode
noremap <leader>q Q
map Q <nop>
" }}}

" }}}

" vim:ft=vim:foldmethod=marker
