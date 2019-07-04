" Thanks god you exist - Drew Neil, author of Practical Vim:
" http://vimcasts.org/episodes/neovim-terminal/
if has('nvim')
  tnoremap <expr> <C-\><C-r> '<C-\><C-N>"'.nr2char(getchar()).'pi'
endif
