" safe_quit.vim - Neovim plugin to prevent accidental quit with terminal buffers

" Check if there are any active terminal buffers
function! s:HasActiveTerminalBuffers()
  for buf in getbufinfo({'bufloaded': 1})
    if getbufvar(buf.bufnr, '&buftype') ==# 'terminal'
      return 1
    endif
  endfor
  return 0
endfunction

" Check if current buffer is a terminal
function! s:IsCurrentBufferTerminal()
  return &buftype ==# 'terminal'
endfunction

" Safe quit function for :Q command
function! s:SafeQuit(bang)
  " If bang is used, bypass all protection and quit directly
  if a:bang
    quit!
    return
  endif
  
  " If trying to quit a terminal buffer directly, disallow it
  if s:IsCurrentBufferTerminal()
    echohl WarningMsg
    echo "Cannot quit terminal buffer. Use :Q! to force quit terminal."
    echohl None
    return
  endif
  
  " Check if quitting this window would close the last window showing a terminal
  " First, simulate what happens after we quit this window
  let total_windows = winnr('$')
  
  " If this is the only window, check if there are terminal buffers
  if total_windows == 1
    if s:HasActiveTerminalBuffers()
      echohl WarningMsg
      echo "Cannot quit: this would close Vim with active terminal buffer(s). Use :Q! to override."
      echohl None
      return
    endif
  endif
  
  " If there are multiple windows, it's generally safe to quit a non-terminal buffer
  " The terminal buffers will remain accessible in other windows or background
  
  " Safe to quit
  quit
endfunction

" Safe quit all function for :Qa command
function! s:SafeQuitAll(bang)
  " If bang is used, bypass all protection and quit directly
  if a:bang
    quitall!
    return
  endif

  " Check if there are any terminal buffers
  if s:HasActiveTerminalBuffers()
    echohl WarningMsg
    echo "Active terminal buffer(s) detected. Close terminal buffers first or use :qa! to force quit all."
    echohl None
    return
  endif
  
  " Safe to quit all
  qall
endfunction

" Show terminal buffers info
function! s:ShowTerminalInfo()
  let terminals = []
  for buf in getbufinfo({'bufloaded': 1})
    if getbufvar(buf.bufnr, '&buftype') ==# 'terminal'
      if buf.name !=# ''
        let name = buf.name
      else
        let name = 'unnamed terminal'
      endif
      call add(terminals, 'Buffer ' . buf.bufnr . ': ' . name)
    endif
  endfor
  
  if empty(terminals)
    echo "No active terminal buffers found."
  else
    echo "Active terminal buffers:"
    for term in terminals
      echo "  - " . term
    endfor
  endif
endfunction

" Create the commands
command! -bang Q call s:SafeQuit(<bang>0)
command! -bang Qa call s:SafeQuitAll(<bang>0)
command! TerminalInfo call s:ShowTerminalInfo()
" Safe abbreviations
cabbrev q Q
cabbrev qa Qa
cabbrev QA Qa
cabbrev qA Qa
