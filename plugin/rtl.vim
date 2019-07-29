" Switch between various rtl and ltr settings
nnoremap <F12> :call rtl#toggle()<CR>
inoremap <F12> <C-\><C-o>:call rtl#toggle()<CR>
" Also in select mode
snoremap <F12> i<BS><C-\><C-o>:call rtl#toggle()<CR>
