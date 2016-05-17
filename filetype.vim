" open automatically NERDTree when no file is specified:
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" markdown: spellchecking and wrap
autocmd Filetype markdown Wrap setlocal spell
" gitcommit: spellcheck
autocmd Filetype gitcommit setlocal spell
