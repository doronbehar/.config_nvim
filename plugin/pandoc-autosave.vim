let g:pandoc_autosave_options = '-s'
let g:pandoc_autosave_output_format = 'html'
command! PandocSetAutoCmd autocmd BufWritePost <buffer> execute('silent Pandoc ' . expand(g:pandoc_autosave_options) . ' ' . expand(g:pandoc_autosave_output_format))
