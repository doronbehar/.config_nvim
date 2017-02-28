nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
nnoremap <F1> :call myfunctions#cycle_foldmethods()<CR>
