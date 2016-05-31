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

" Tmux vim navigator - Window movement:
nnoremap <C-j> :TmuxNavigateDown<CR>
nnoremap <C-h> :TmuxNavigateLeft<CR>
nnoremap <C-\> :TmuxNavigatePrevious<CR>
nnoremap <C-l> :TmuxNavigateRight<CR>
nnoremap <C-k> :TmuxNavigateUp<CR>

" sCRolling horizontally easier and more intutive:
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

" Buffers navigation:
nnoremap b<right> :bn<CR>
nnoremap b<left> :bp<CR>
nnoremap B<left> :Bp<CR>
nnoremap B<right> :Bn<CR>
nnoremap bl :bn<CR>
nnoremap bh :bp<CR>
nnoremap Bh :Bp<CR>
nnoremap Bl :Bn<CR>

" Start the find and replace command aCRoss the entire file with a visually selected text.
vnoremap <leader>r <Esc>:%s/<c-r>=functions#GetVisual()<CR>//gc<left><left><left>
vnoremap <leader>R <Esc>:%s/\<<c-r>=functions#GetVisual()<CR>\>//gc<left><left><left>

" make a double click on escape button execute `noh` which unhighlights all
" previous search's results
nnoremap <leader>h :noh<CR>
" toggle set hlsearc setting:
nnoremap <leader>H :set hlsearch! hlsearch?<CR>

" Create a mapping to sync syntax:
nnoremap <leader><esc> :syntax sync fromstart<CR>

" Make <leader>s find the visually selected text
vnoremap <leader>s <Esc>/<c-r>=functions#GetVisual()<CR><CR>
" Make <leader>S find the visually selected text - whole words only.
vnoremap <leader>S <Esc>/\<<c-r>=functions#GetVisual()<CR>\><CR>

" Add option specifically for markdown editing to make a visually selected text:
" - **Bold**
vnoremap <leader>b "bs****<Esc>h"bP
" - *Italic*
vnoremap <leader>i "is**<Esc>"iP
" - `Code`
vnoremap <leader>c "cs``<Esc>"cP
" - [link]()
vnoremap <leader>l "cs[]()<Esc>hh"cPlla

" vim: ft=vim
