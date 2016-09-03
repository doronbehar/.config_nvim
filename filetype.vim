" markdown: spellchecking and wrap
autocmd Filetype markdown setlocal spell
autocmd Filetype markdown Wrap
" Add option specifically for markdown editing to make a visually selected text:
" - **Bold**
autocmd Filetype markdown vnoremap <silent> <leader>b "mc****<Esc>h"mP
" - *Italic*
autocmd Filetype markdown vnoremap <silent> <leader>i "mc**<Esc>"mP
" - `Code`
autocmd Filetype markdown vnoremap <silent> <leader>c "mc``<Esc>"mP
" - [link]()
autocmd Filetype markdown vnoremap <silent> <leader>l "mc[]()<Esc>hh"mPlla
" and for single [wW]ords in normal mode:
" - **Bold**
autocmd Filetype markdown nnoremap <silent> <leader>b "mciw****<Esc>h"mP
autocmd Filetype markdown nnoremap <silent> <leader>B "mciW****<Esc>h"mP
" - *Italic*
autocmd Filetype markdown nnoremap <silent> <leader>i "mciw**<Esc>"mP
autocmd Filetype markdown nnoremap <silent> <leader>I "mciW**<Esc>"mP
" - `Code`
autocmd Filetype markdown nnoremap <silent> <leader>c "mciw``<Esc>"mP
autocmd Filetype markdown nnoremap <silent> <leader>C "mciW``<Esc>"mP
" - [link]()
autocmd Filetype markdown nnoremap <silent> <leader>l "mciw[]()<Esc>hh"mPlla
autocmd Filetype markdown nnoremap <silent> <leader>L "mciW[]()<Esc>hh"mPlla

" gitcommit: spellcheck
autocmd Filetype gitcommit setlocal spell
