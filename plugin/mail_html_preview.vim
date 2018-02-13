augroup mail_html_preview
	au BufNewFile,BufRead ~/.cache/mutt/compositions/* let g:pandoc#command#autoexec_on_writes = 1 | let b:pandoc_command_autoexec_command = 'Pandoc #mail_html'
augroup END
