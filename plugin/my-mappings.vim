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
nnoremap <C-i> zl
nnoremap <C-u> zh
nnoremap <C-n> jzz
nnoremap <C-m> kzz

" Word navigation - Uses e and W with g appended before for special movement.
noremap w b
noremap W B
noremap gw ge
noremap gW gE
noremap ge w
noremap gE W

" replace the annoyance of Q with <leader>c:
nnoremap <leader>c Q
map Q <nop>

" Start the find and replace command across the entire file with a visually selected text.
vnoremap <leader>r <Esc>:%s/<c-r>=stackoverflow#a6171215#GetVisual()<CR>//gc<left><left><left>
vnoremap <leader>R <Esc>:%s/\<<c-r>=stackoverflow#a6171215#GetVisual()<CR>\>//gc<left><left><left>

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

" make <leader>l and <leader>e pop up the location and Quick fix lists
nmap <silent> <leader>l :call wikia#tip1008#ToggleList("Location List", 'l')<CR>
nmap <silent> <leader>f :call wikia#tip1008#ToggleList("Quickfix List", 'c')<CR>

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

" Add option specifically for markdown editing to make a visually selected text:
" - **Bold**
vnoremap <silent> <leader>b "mc****<Esc>h"mP
" - *Italic*
vnoremap <silent> <leader>i "mc**<Esc>"mP
" - `Code`
vnoremap <silent> <leader>c "mc``<Esc>"mP
" - [link]()
vnoremap <silent> <leader>l "mc[]()<Esc>hh"mPlla
" and for single [wW]ords in normal mode:
" - **Bold**
nnoremap <silent> <leader>b "mciw****<Esc>h"mP
nnoremap <silent> <leader>B "mciW****<Esc>h"mP
" - *Italic*
nnoremap <silent> <leader>i "mciw**<Esc>"mP
nnoremap <silent> <leader>I "mciW**<Esc>"mP
" - `Code`
nnoremap <silent> <leader>c "mciw``<Esc>"mP
nnoremap <silent> <leader>C "mciW``<Esc>"mP
" - [link]()
nnoremap <silent> <leader>l "mciw[]()<Esc>hh"mPlla
nnoremap <silent> <leader>L "mciW[]()<Esc>hh"mPlla

" General mappings to add quotes to []() selected text:
vnoremap <leader>" "gc""<Esc>"gP
