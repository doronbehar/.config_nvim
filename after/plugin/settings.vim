" {{{ fzf
if exists('*fzf#wrap')
	" mappings completion - Awesome! Who needs space vim with this beauty?
	nmap <leader><tab> <plug>(fzf-maps-n)
	xmap <leader><tab> <plug>(fzf-maps-x)
	omap <leader><tab> <plug>(fzf-maps-o)

	" Insert mode completion ~/.local/share/
	" A simpler version of the same mapping examplified upstream
	imap <expr> <c-x><c-f> fzf#vim#complete#path("find -maxdepth 1 -mindepth 1 -printf '%%P\n'")
	imap <c-x><c-l> <plug>(fzf-complete-line)
	" Complete a command from the history
	nmap <leader>: :History:<CR>
	" Complete a previous search query
	nmap <leader>/ :History/<CR>
	" Complete a previous search query
	nmap <leader>? :History<CR>
	" Complete a file from the history edited buffers
	nmap <leader>G :GFiles<CR>
	nmap <leader>M :GFiles?<CR>
	" Complete a file from open buffers
	nmap <leader>B :Buffers<CR>
elseif empty($VIM_NO_FZF)
	echomsg "couldn't find fzf#wrap definition, fix your fzf installation, use a host-specific plugin or set $VIM_NO_FZF"
endif
" }}}

" vim:foldmethod=marker:ft=vim
