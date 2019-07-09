" This plugin strives to improve a little bit the UX issue of :terminal
" buffers getting the information that all of sudden their available width has
" grown into the full size of the parent terminal emulator. This is often
" happens when programs such as `lf` for example which use curses, run inside
" these :terminal buffers.

augroup terminal_autoresetsize
  au!
  autocmd BufEnter term://* call s:reset_size()
augroup END

function! s:reset_size() abort
  execute('resize -1')
  execute('resize +1')
  execute('vertical resize -1')
  execute('vertical resize +1')
endfunction
