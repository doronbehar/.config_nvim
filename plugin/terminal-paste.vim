" Thanks god you exist - Drew Neil, author of Practical Vim:
" http://vimcasts.org/episodes/neovim-terminal/
if has('nvim')
  tnoremap <expr> <C-\><C-r> '<C-\><C-N>"'.nr2char(getchar()).'pi'
else
  " https://stackoverflow.com/questions/54734173/how-to-copy-and-paste-in-vims-terminal-mode
  tnoremap <expr> <C-\><C-r> '<C-w>"'.nr2char(getchar()).'pi'
endif
