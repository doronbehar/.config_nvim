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

" Control tabsize easily
command! -nargs=1 Tabsize call tabsize#set(<f-args>)

" Change pandoc variables easily
command! -nargs=0 PAT call pandoc_vars#toggle_autoexec_on_writes()
command! -nargs=+ PAC call pandoc_vars#set_autoexec_command(<f-args>)

" Switch between various rtl and ltr settings
nnoremap <F10> :call paragraph#toggle()<CR>
inoremap <F10> <C-\><C-o>:call paragraph#toggle()<CR>
nnoremap <F11> :call smartwrap#toggle()<CR>
inoremap <F11> <C-\><C-o>:call smartwrap#toggle()<CR>
" Switch between various rtl and ltr settings
nnoremap <F12> :call rtl#toggle()<CR>
inoremap <F12> <C-\><C-o>:call rtl#toggle()<CR>
" Also in select mode
snoremap <F12> i<BS><C-\><C-o>:call rtl#toggle()<CR>

" vim:ft=vim:foldmethod=marker
