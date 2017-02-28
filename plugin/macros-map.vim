" {{{ <leader>[sS] : find the visually selected text
vnoremap <leader>s <Esc>/<c-r>=stackoverflow#a6171215#GetVisual()<CR><CR>
" whole words only.
vnoremap <leader>S <Esc>/\<<c-r>=stackoverflow#a6171215#GetVisual()<CR>\><CR>
" }}}

" {{{ <leader>[rR] : Start the find and replace command across the entire file with a visually selected text.
vnoremap <leader>r <Esc>:%s/<c-r>=stackoverflow#a6171215#GetVisual()<CR>//gc<left><left><left>
" Whole words only.
vnoremap <leader>R <Esc>:%s/\<<c-r>=stackoverflow#a6171215#GetVisual()<CR>\>//gc<left><left><left>
" }}}

" {{{ <leader>[lf] : pop up the Location-list and Quickfix-list
nnoremap <silent> <leader>l :call wikia#tip1008#ToggleList("Location List", 'l')<CR>
nnoremap <silent> <leader>f :call wikia#tip1008#ToggleList("Quickfix List", 'c')<CR>
" }}}

" {{{ <leader>t : translate visually selected text in a terminal
" * Requiers `trans` program from: https://github.com/soimort/translate-shell
" * I use this command to translate to hebrew.
if has('nvim')
	" NeoVim has a built in terminal better than the normal `!` command line
	" interface not available alone in NeoVim.
	vnoremap <leader>t <Esc>:term trans -t he <c-r>=stackoverflow#a6171215#GetVisual()<CR><CR>
else
	vnoremap <leader>t <Esc>:!trans -t he <c-r>=stackoverflow#a6171215#GetVisual()<CR><CR>
end
" }}}

" {{{ <leader>o : run xdg-open on the visually selected text
" Useful for URLs
vnoremap <leader>o "gy<Esc>:!xdg-open '<c-r>g'<CR>
" }}}

" {{{ <leader>[h<esc>] : syntax highlighting options
" toggle set hlsearc setting:
nnoremap <leader>h :set hlsearch! hlsearch?<CR>
" Create a mapping to sync syntax:
nnoremap <leader><esc> :syntax sync fromstart<CR>
" }}}

" {{{ <leader>['"] : add quotes to selected text
vnoremap <leader>" "gc""<Esc>"gP
vnoremap <leader>' "gc''<Esc>"gP
" }}}

" {{{ <leader>q : better way to enter Ex mode
noremap <leader>q Q
map Q <nop>
" }}}

" vim:ft=vim:foldmethod=marker
