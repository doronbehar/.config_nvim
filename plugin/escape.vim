" {{{ <leader>[sS] : find the visually selected text
vnoremap <leader>s <Esc>/<c-r>=escape#getvisual()<CR><CR>
" whole words only.
vnoremap <leader>S <Esc>/\<<c-r>=escape#getvisual()<CR>\><CR>
" }}}

" {{{ <leader>[rR] : Start the find and replace command across the entire file with a visually selected text.
vnoremap <leader>r <Esc>:%s/<c-r>=escape#getvisual()<CR>//gc<left><left><left>
" Whole words only.
vnoremap <leader>R <Esc>:%s/\<<c-r>=escape#getvisual()<CR>\>//gc<left><left><left>
" }}}

" vim:ft=vim:foldmethod=marker
