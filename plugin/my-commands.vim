" pasting from xclipboard settings:
command! -nargs=* Paste set paste list
command! -nargs=* Nopaste set nopaste list

" create a command that sets up all normal word wrap "Wrap"
command! -nargs=* Wrap set wrap linebreak nolist | map j gj| map k gk| map 0 g0| map $ g$
command! -nargs=* Nowrap set nowrap nolinebreak list | unmap j| unmap k| unmap 0| unmap $

" create command to cd into the directory of the current file:
command! -nargs=* CD cd %:p:h
cabbrev Cd CD
