" Thanks god you exist - Drew Neil, author of Practical Vim:
" http://vimcasts.org/episodes/neovim-terminal/
if has('nvim')
  tnoremap <expr> <C-\><C-r> '<C-\><C-N>"'.nr2char(getchar()).'pi'
else
  " https://stackoverflow.com/questions/54734173/how-to-copy-and-paste-in-vims-terminal-mode
  tnoremap <expr> <C-\><C-r> '<C-w>"'.nr2char(getchar()).'pi'
endif

" {{{ getting out of :term windows on Neovim and Vim
" credit: https://jerrington.me/posts/2016-05-02-neovim-terminal-quicknav.html
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-l> <C-\><C-n><C-w>l
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-\><C-\> <C-\><C-n>
" }}}

" {{{ Partially solves an unfixable, annoying collision between Nvim's keys
" interpretation, and my zsh's `bindkey` settings. Related ZSH config:
" https://github.com/doronbehar/dotfiles/blob/master/.zshrc#L149
"
" I need to report this to ZSH's mailing lists, as it doesn't occour in Bash.
tnoremap <Home> <Nop>
tnoremap <End> <Nop>
tnoremap <Delete> <Nop>
" }}}
