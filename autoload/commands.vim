" make change gitgutter's signs refresh easier to type
command! -nargs=* GGE GitGutterEnable
command! -nargs=* GGD GitGutterDisable
"GitGutterToggle
command! -nargs=* GGSE GitGutterSignsEnable
command! -nargs=* GGSD GitGutterSignsDisable
"GitGutterSignsToggle
command! -nargs=* GGHE GitGutterLineHighlightsEnable
command! -nargs=* GGHD GitGutterLineHighlightsDisable
"GitGutterLineHighlightsToggle

" pasting from xclipboard settings:
command! -nargs=* Paste set paste list
command! -nargs=* Nopaste set nopaste list

" create a command that sets up all normal word wrap "Wrap"
command! -nargs=* Wrap set wrap linebreak nolist | nmap j gj| nmap k gk| nmap 0 g0| nmap $ g$
command! -nargs=* Nowrap set nowrap nolinebreak list | nunmap j| uunmap k| nunmap 0| nunmap $

" Fully Hijack netrw with NERDTree:
command! -nargs=* EXB e %:p:h
" The shorter command is to delete the last buffer as well:
command! -nargs=* -bang EX e %:p:h | bdel<bang> #
" Open NERDTree faster:
command! -nargs=? -complete=dir -bang D NERDTree<bang> <args>
" Write file with no case mistakes:
command! -nargs=? -complete=file -bang W w<bang> <args>

" delete buffers when exiting
" (the if statement makes sure you don't get inside a loop when trying
" to quit the last opened file)
command! -nargs=* -bang Q if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1| q<bang> | else | bdelete<bang> | endif | set foldmethod=indent
command! -nargs=* -bang WQ w<bang> | Q
" command to just quit the buffer but not delete it:
command! -nargs=* -bang QB q<bang>
command! -nargs=* -bang WQB w | q<bang>
" Enable changing the current file while deleting the previous file's buffer:
command! -nargs=1 -bang -complete=file E e <args> | bdel<bang> #

" command to switch a buffer and deleting the last one:
command! -nargs=* -bang Bn bn | bdel<bang> #
command! -nargs=* -bang Bp bp | bdel<bang> #
" vim: ft=vim
