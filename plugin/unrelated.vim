" Autoread
nnoremap <leader>A :call autoread#toggle()<CR>

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

" better way to enter Ex mode
noremap <leader>Q Q
map Q <nop>
" cycle through all foldmethods
nnoremap <leader>m :call foldmethods#cycle()<CR>
" toggle set hlsearc setting:
nnoremap <leader>v :set hlsearch! hlsearch?<CR>

" toggle pager mode
nnoremap <leader>p :call pager#toggle()<CR>
" Create a mapping to sync syntax:
nnoremap <leader><esc> :syntax sync fromstart<CR>

" vim:ft=vim:foldmethod=marker
