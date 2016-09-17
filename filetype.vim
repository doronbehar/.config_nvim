" markdown: spellchecking and wrap
autocmd Filetype markdown setlocal spell
autocmd Filetype markdown Wrap
" Add option specifically for markdown editing to make a visually selected text:
" - **Bold**
autocmd Filetype markdown vnoremap <buffer> <leader>b "mc****<Esc>h"mP
" - *Italic*
autocmd Filetype markdown vnoremap <buffer> <leader>i "mc**<Esc>"mP
" - `Code`
autocmd Filetype markdown vnoremap <buffer> <leader>c "mc``<Esc>"mP
" - [link]()
autocmd Filetype markdown vnoremap <buffer> <leader>l "mc[]()<Esc>hh"mPlla
" and for single [wW]ords in normal mode:
" - **Bold**
autocmd Filetype markdown nnoremap <buffer> <leader>b "mciw****<Esc>h"mP
autocmd Filetype markdown nnoremap <buffer> <leader>B "mciW****<Esc>h"mP
" - *Italic*
autocmd Filetype markdown nnoremap <buffer> <leader>i "mciw**<Esc>"mP
autocmd Filetype markdown nnoremap <buffer> <leader>I "mciW**<Esc>"mP
" - `Code`
autocmd Filetype markdown nnoremap <buffer> <leader>c "mciw``<Esc>"mP
autocmd Filetype markdown nnoremap <buffer> <leader>C "mciW``<Esc>"mP
" - [link]()
autocmd Filetype markdown nnoremap <buffer> <leader>l "mciw[]()<Esc>hh"mPlla
autocmd Filetype markdown nnoremap <buffer> <leader>L "mciW[]()<Esc>hh"mPlla
" Add keyboard-shortcut for translate current word under the cursor
if has('nvim')
	" NeoVim has a built in terminal better than the normal `!` command line
	" interface not available alone in NeoVim.
	autocmd Filetype markdown nnoremap <leader>t viw<Esc>:term trans -t he <c-r>=stackoverflow#a6171215#GetVisual()<CR><CR>
	autocmd Filetype markdown nnoremap <leader>T viW<Esc>:term trans -t he <c-r>=stackoverflow#a6171215#GetVisual()<CR><CR>
else
	autocmd Filetype markdown nnoremap <leader>t viw<Esc>:!trans -t he <c-r>=stackoverflow#a6171215#GetVisual()<CR><CR>
	autocmd Filetype markdown nnoremap <leader>T viW<Esc>:!trans -t he <c-r>=stackoverflow#a6171215#GetVisual()<CR><CR>
end

" gitcommit: spellcheck
autocmd Filetype gitcommit setlocal spell

" Hebrew text files:
autocmd Filetype hebrew Hebrew
autocmd Filetype hebrew Wrap
