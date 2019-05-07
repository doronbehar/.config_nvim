setlocal path+=$GOPATH/src
execute('nnoremap <buffer>' . g:vebugger_leader . 'r :DlvExec<space>')
execute('nnoremap <buffer>' . g:vebugger_leader . 'b :DlvToggleBreakpoint<CR>')
execute('nnoremap <buffer>' . g:vebugger_leader . 't :DlvToggleTracepoint<CR>')
execute('nnoremap <buffer>' . g:vebugger_leader . 'B :DlvClearAll<CR>')
