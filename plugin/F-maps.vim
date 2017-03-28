" Cycle through all foldmethods
nnoremap <F1> :call myfunctions#cycle_foldmethods()<CR>

" Run xdg-open on the visually selected text or the word under the cursor - Useful for URLs
vnoremap <F2> <Esc>:!xdg-open <C-r>=stackoverflow#a6171215#GetVisual()<CR><CR>
nnoremap <F2> <Esc>:!xdg-open <C-r><C-w><CR>
nnoremap <S-F2> <Esc>:!xdg-open <C-r><C-A><CR>

" Toggle all relevant settings and maps-for smartwrap
nnoremap <F3> :call myfunctions#toggle_smartwrap()<CR>

" Toggle all relevant settings and maps for RTL/LTR
noremap <F12> :call myfunctions#toggle_rtl()<CR>
inoremap <F12> <C-\><C-o>:call myfunctions#toggle_rtl()<CR>
