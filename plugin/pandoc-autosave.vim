let g:pandoc_autosave_command = 'pandoc -s "%"'
command! PandocSetAutoCmd autocmd BufWritePost <buffer> execute('silent !' . expand(g:pandoc_autosave_command) . ' -o ' . expand('%:p:r') . '.html')
command! PandocOpenHtml execute('silent !firefox ' . expand('%:p:r') . '.html')
