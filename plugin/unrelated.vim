" Control tabsize easily
command! -nargs=1 Tabsize call tabsize#set(<f-args>)

" Change pandoc variables easily
command! -nargs=0 PAT call pandoc_vars#toggle_autoexec_on_writes()
command! -nargs=+ PAC call pandoc_vars#set_autoexec_command(<f-args>)

" Preserver selection after indentation:
" Source: https://dailyvim.tumblr.com/post/138670862883/preserve-selection-after-indentation
vmap > >gv
vmap < <gv

" ----------------
" <leader> related
" ----------------

" find the visually selected text
vnoremap <leader>s <Esc>/<c-r>=escape#getvisual()<CR><CR>
vnoremap <leader>S <Esc>/\<<c-r>=escape#getvisual()<CR>\><CR>
" replace the visually selected text
vnoremap <leader>r <Esc>:%s/<c-r>=escape#getvisual()<CR>//gc<left><left><left>
vnoremap <leader>R <Esc>:%s/\<<c-r>=escape#getvisual()<CR>\>//gc<left><left><left>

" ---------------
" <space> related
" ---------------

" toggle set hlsearc setting:
nnoremap <space>v :set hlsearch! hlsearch?<CR>
" Create a mapping to sync syntax:
nnoremap <space><esc> :syntax sync fromstart<CR>
" cycle through all foldmethods
nnoremap <space>m :call foldmethods#cycle()<CR>
" toggle pager mode
nnoremap <space>p :call pager#toggle()<CR>
" Complete a command from the history
nnoremap <space>; :History:<CR>
" Complete a previous search query
nnoremap <space>/ :History/<CR>
" Complete a previous search query
nnoremap <space>? :History<CR>
" Complete a file from the history edited buffers
nnoremap <space>g :GFiles<CR>
nnoremap <space>m :GFiles?<CR>
" Complete a file from open buffers
nnoremap <space>b :Buffers<CR>

" --------------------------------
" <F#> that should work everywhere
" --------------------------------

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
