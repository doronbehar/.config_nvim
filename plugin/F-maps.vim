" Cycle through all foldmethods
nnoremap <F1> :call myfunctions#cycle_foldmethods()<CR>

" Toggle all relevant settings and maps-for smartwrap
nnoremap <F2> :call myfunctions#toggle_smartwrap()<CR>

" Toggle all relevant settings and maps for RTL/LTR
noremap <F12> :call myfunctions#toggle_rtl()<CR>
inoremap <F12> <C-\><C-o>:call myfunctions#toggle_rtl()<CR>

" {{{ <leader>[lf] : pop up the Location-list and Quickfix-list
nnoremap <F11> :call wikia#tip1008#ToggleList("Location List", 'l')<CR>
nnoremap <F10> :call wikia#tip1008#ToggleList("Quickfix List", 'c')<CR>
" }}}
