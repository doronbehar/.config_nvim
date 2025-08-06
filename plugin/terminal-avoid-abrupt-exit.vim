" Written with ChatGPT :)
function! CheckActiveJobs()
  for buf in range(1, bufnr('$'))
    if getbufvar(buf, "&buftype") ==# "terminal"
      let job_id = getbufvar(buf, "terminal_job_id", 0)
      if job_id > 0 && jobwait([job_id], 0)[0] == -1
        return 1 " Active job found
      endif
    endif
  endfor
  return 0 " No active jobs
endfunction

for cmd in ['q', 'quit', 'qa', 'quitall']
  execute 'cabbrev <expr> ' . cmd .
        \ ' CheckActiveJobs() ? "echoerr ''Cannot ' . cmd . ': active terminal jobs!''" : ''' . cmd . ''''
endfor
