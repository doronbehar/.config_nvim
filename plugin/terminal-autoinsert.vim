" This plugin makes leaving and entering :terminal buffers feel a little
" smoother. On every BufEnter, we check if it's a :terminal buffer and check
" what's the command running in it using the shell command:
" $ ps -ocommand -no-headers --ppid <terminal shell pid>
"
" This command lists the commands of the child processes that run inside that
" :terminal buffer. If any of which match a any of certain commands, we switch
" to insert mode immediately in that :terminal buffer. These commands are
" rather common and we know we'd like to get into insert mode right away to
" remove the UX inconvenience.

" Putting the most common above so they'll match first
let g:terminal_autoinsert_commands = [
    \ 'less',
    \ 'fzf',
    \ 'git---ssh'
\ ]

augroup terminal_autoinsert
  au!
  autocmd BufEnter term://* call s:process_check_insert()
augroup END

function! s:process_check_insert() abort
  let l:bufnr = bufnr('%')
  let l:parent_pid = getbufvar(l:bufnr, 'terminal_job_pid')
  if empty(l:parent_pid)
    echomsg "parent pid wasn't found!"
    return
  endif
  let l:child_processes = system('pstree -A -T ' . l:parent_pid)
  if v:shell_error || empty(l:child_processes)
    return
  endif
  for l:cmd in g:terminal_autoinsert_commands
    if l:child_processes =~# l:cmd
      startinsert
      return
    endif
  endfor
endfunction


