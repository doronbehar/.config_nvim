runtime host-specific/ZENIX.vim
" Using win32yank (install via scoop)
set clipboard=unnamedplus
let g:vimtex_view_general_viewer = '/mnt/c/Users/doronbehar/AppData/Local/SumatraPDF/SumatraPDF.exe'
let g:vimtex_view_general_options
    \ = '-reuse-instance -forward-search @tex @line @pdf'
