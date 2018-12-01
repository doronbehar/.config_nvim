command! -nargs=0 PAT call pandoc_vars#toggle_autoexec_on_writes()
command! -nargs=+ PAC call pandoc_vars#set_autoexec_command(<f-args>)
