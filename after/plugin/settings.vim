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
elseif empty($VIM_NO_FZF)
	echomsg "couldn't find fzf#wrap definition, fix your fzf installation, use a host-specific plugin or set $VIM_NO_FZF"
endif
" }}}

" {{{ coc
if exists('g:did_coc_loaded')
	" Insert <tab> when previous text is space, refresh completion if not.
	inoremap <silent><expr> <TAB>
			\ coc#pum#visible() ? coc#_select_confirm() :
			\ coc#expandableOrJumpable() ?
			\ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
	inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
endif
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Set this option if no other plugin has set it
if &foldmethod == 'manual'
	set foldmethod=indent
endif
" }}}

" vim:foldmethod=marker:ft=vim
