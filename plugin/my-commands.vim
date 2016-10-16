" {{{ pasting from xclipboard settings
command! -nargs=* Paste setlocal paste list
command! -nargs=* Nopaste setlocal nopaste list
" }}}

" {{{ create a command that sets up normal "Wrap"
command! -nargs=* Wrap setlocal wrap linebreak nolist|
			\ map <silent> <buffer> j gj|
			\ map <silent> <buffer> k gk|
			\ map <silent> <buffer> 0 g0|
			\ map <silent> <buffer> $ g$
command! -nargs=* Nowrap setlocal nowrap nolinebreak list|
			\ unmap <silent> <buffer> j|
			\ unmap <silent> <buffer> k|
			\ unmap <silent> <buffer> 0|
			\ unmap <silent> <buffer> $
" }}}

" {{{ create command to cd into the directory of the current file
command! -nargs=* Cd cd %:p:h
cabbrev CD Cd
" }}}

" {{{ Command to fix keymaps for hebrew
command! -nargs=* Hebrew setlocal keymap=hebrew|
			\ setlocal rightleft|
			\ noremap <silent> <buffer> w e|
			\ noremap <silent> <buffer> W E|
			\ noremap <silent> <buffer> e b|
			\ noremap <silent> <buffer> E B|
			\ noremap <silent> <buffer> gw w|
			\ noremap <silent> <buffer> gW W|
			\ noremap <silent> <buffer> ge ge|
			\ noremap <silent> <buffer> gE gE
cabbrev Heb Hebrew
command! -nargs=* Nohebrew setlocal keymap= |
			\ setlocal norightleft|
			\ noremap <silent> <buffer> w b|
			\ noremap <silent> <buffer> W B|
			\ noremap <silent> <buffer> gw ge|
			\ noremap <silent> <buffer> gW gE|
			\ noremap <silent> <buffer> ge w|
			\ noremap <silent> <buffer> gE W|
			\ noremap <silent> <buffer> e e|
			\ noremap <silent> <buffer> E E
cabbrev Noheb Nohebrew
" }}}

" vim:ft=vim:foldmethod=marker
