" tab manipulation
nnoremap t<right> :tabm +1<CR>
nnoremap t<left> :tabm -1<CR>
nnoremap t0 :tabm 0<CR>
nnoremap t1 :tabm 1<CR>
nnoremap t2 :tabm 2<CR>
nnoremap t3 :tabm 3<CR>
nnoremap t4 :tabm 4<CR>
nnoremap t5 :tabm 5<CR>
nnoremap t6 :tabm 6<CR>
nnoremap t7 :tabm 7<CR>
nnoremap t8 :tabm 8<CR>
nnoremap t9 :tabm 9<CR>
nnoremap th :tabm -1<CR>
nnoremap tl :tabm +1<CR>

" tab movement
nnoremap g<right> :tabn<CR>
nnoremap g<left> :tabp<CR>
nnoremap gl :tabn<CR>
nnoremap gh :tabp<CR>
nnoremap g1 1gt
nnoremap g2 2gt
nnoremap g3 3gt
nnoremap g4 4gt
nnoremap g5 5gt
nnoremap g6 6gt
nnoremap g7 7gt
nnoremap g8 8gt
nnoremap g9 9gt

" windows resizing
nnoremap <C-Up> <C-W>+
nnoremap <C-Down> <C-W>-
nnoremap <C-Right> <C-W>>
nnoremap <C-Left> <C-W><

" scrolling horizontally easier and more intutive:
noremap <A-i> zl
noremap <A-u> zh
noremap <A-j> jzz
noremap <A-k> kzz

" remapping to a better more comfortable mappings.
noremap <C-m> -
noremap <C-n> <C-m>

" Remove useless motion mappings
noremap <C-p> <nop>

" Word navigation - Uses e and W with g appended before for special movement.
noremap b <nop>
noremap B <nop>
noremap w b
noremap W B
noremap gw ge
noremap gW gE
noremap ge w
noremap gE W

" replace the annoyance of Q with <leader>c:
noremap <leader>q Q
map Q <nop>

" Start the find and replace command across the entire file with a visually selected text.
vnoremap <leader>r <Esc>:OverCommandLine<CR>%s/<c-r>=stackoverflow#a6171215#GetVisual()<CR>//gc<left><left><left>
vnoremap <leader>R <Esc>:OverCommandLine<CR>%s/\<<c-r>=stackoverflow#a6171215#GetVisual()<CR>\>//gc<left><left><left>

" Add key-combination for going back to previously mistakanly-replaced/mistakanly-not-replaced
" item in find and replace prompt:
nnoremap <leader>m '.:<Up><Home><Del>.,$<CR>
nnoremap <leader>M u'.:<Up><Home><Del>.,$<CR>

" make a double click on escape button execute `noh` which unhighlights all
" previous search's results
nnoremap <leader>h :noh<CR>
" toggle set hlsearc setting:
nnoremap <leader>H :set hlsearch! hlsearch?<CR>

" Create a mapping to sync syntax:
nnoremap <leader><esc> :syntax sync fromstart<CR>

" Make <leader>s find the visually selected text
vnoremap <leader>s <Esc>/<c-r>=stackoverflow#a6171215#GetVisual()<CR><CR>
" Make <leader>S find the visually selected text - whole words only.
vnoremap <leader>S <Esc>/\<<c-r>=stackoverflow#a6171215#GetVisual()<CR>\><CR>

" make <leader>l and <leader>c pop up the location and Quick fix lists
nnoremap <silent> <leader>l :call wikia#tip1008#ToggleList("Location List", 'l')<CR>
nnoremap <silent> <leader>f :call wikia#tip1008#ToggleList("Quickfix List", 'c')<CR>

" Make <leader>t translate visually selected text and open a terminal:
" * Requiers `trans` program from: https://github.com/soimort/translate-shell
" * I use this command to translate to hebrew.
if has('nvim')
	" NeoVim has a built in terminal better than the normal `!` command line
	" interface not available alone in NeoVim.
	vnoremap <leader>t <Esc>:term trans -t he <c-r>=stackoverflow#a6171215#GetVisual()<CR><CR>
else
	vnoremap <leader>t <Esc>:!trans -t he <c-r>=stackoverflow#a6171215#GetVisual()<CR><CR>
end

" General mappings to add quotes to selected text:
vnoremap <leader>" "gc""<Esc>"gP
vnoremap <leader>' "gc''<Esc>"gP
