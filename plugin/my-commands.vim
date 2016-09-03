" pasting from xclipboard settings:
command! -nargs=* Paste set paste list
command! -nargs=* Nopaste set nopaste list

" create a command that sets up all normal word wrap "Wrap"
command! -nargs=* Wrap set wrap linebreak nolist | map j gj| map k gk| map 0 g0| map $ g$
command! -nargs=* Nowrap set nowrap nolinebreak list | unmap j| unmap k| unmap 0| unmap $

" create command to cd into the directory of the current file:
command! -nargs=* CD cd %:p:h
cabbrev Cd CD

command! -nargs=* Hebrew set keymap=hebrew|
			\ set rightleft|
			\ unmap <silent> <buffer> ge|
			\ unmap <silent> <buffer> gE|
			\ noremap <buffer> w e|
			\ noremap <buffer> W E|
			\ noremap <buffer> e b|
			\ noremap <buffer> E B|
			\ noremap <buffer> gw w|
			\ noremap <buffer> gW W
cabbrev Heb Hebrew

command! -nargs=* Nohebrew set keymap= |
			\ set norightleft|
			\ unmap <silent> <buffer> e|
			\ unmap <silent> <buffer> E|
			\ noremap <buffer> w b|
			\ noremap <buffer> W B|
			\ noremap <buffer> gw ge|
			\ noremap <buffer> gW gE|
			\ noremap <buffer> ge w|
			\ noremap <buffer> gE W
cabbrev Noheb Nohebrew
