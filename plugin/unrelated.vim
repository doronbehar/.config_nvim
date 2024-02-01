" Control tabsize easily
command! -nargs=1 Tabsize call tabsize#set(<f-args>)
" View a man page with hardwrapping - useful for man pages with big tables,
" like `systemd.unit`
command! -nargs=1 ManHW unlet $MANWIDTH | let g:man_hardwrap = 1 | Man <args> | let g:man_hardwrap = 0 | let $MANWIDTH=999

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
" toggle set hlsearc setting:
nnoremap <leader>v :set hlsearch! hlsearch?<CR>
" Create a mapping to sync syntax:
nnoremap <leader><esc> :syntax sync fromstart<CR>
" Copy the current file path to clipboard
nnoremap <leader>y :let @+=expand('%:p') \| echo expand('%:p')<CR>
nnoremap <leader>Y :let @+=expand('%') \| echo expand('%')<CR>

" --------------------------------------------
" <space> related, usually for searching stuff
" --------------------------------------------

" cycle through all foldmethods
nnoremap <leader>m :call foldmethods#cycle()<CR>
" toggle pager mode
nnoremap <leader>p :call pager#toggle()<CR>
" Complete a command from the history
nnoremap <space>; :FzfLua command_history:<CR>
" Complete a previous search query
nnoremap <space>/ :FzfLua search_history<CR>
" Complete a file from the history edited buffers
nnoremap <space>g :FzfLua git_files<CR>
nnoremap <space>m :FzfLua git_status<CR>
" Complete a file from open buffers
nnoremap <space>b :FzfLua buffers<CR>
" Search and press a keymap
nnoremap <leader><tab> :FzfLua keymaps<CR>

" ----------------------------------------
" <F#> that usually should work everywhere
" ----------------------------------------

" Switch between various rtl and ltr settings
nnoremap <F10> :call paragraph#toggle()<CR>
inoremap <F10> <C-\><C-o>:call paragraph#toggle()<CR>
nnoremap <F11> :call smartwrap#toggle()<CR>
inoremap <F11> <C-\><C-o>:call smartwrap#toggle()<CR>
nnoremap <F12> :call rtl#toggle()<CR>
inoremap <F12> <C-\><C-o>:call rtl#toggle()<CR>
" toggle set spell setting:
nnoremap <F2> :set spell! spell?<CR>
inoremap <F2> <C-\><C-o>:set spell! spell?<CR>
" Gundo
nnoremap <F5> :GundoToggle<CR>
