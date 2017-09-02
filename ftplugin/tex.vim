command! TikzSetAutoCmdToConvertToSVG autocmd BufWritePost <buffer> execute('silent !pdf2svg ' . expand('%:r') . '.pdf ' . expand('%:r') . '.svg')
command! TikzShowAutoCmd autocmd User VimtexEventCompileStopped
command! TikzUnsetAutoCmd autocmd! User VimtexEventCompileStopped
