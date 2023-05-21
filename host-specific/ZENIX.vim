runtime host-specific/nix-suda.vim
luafile $XDG_CONFIG_HOME/nvim/host-specific/ZENIX.lua

" See :help dao-completion
au FileType dap-repl lua require('dap.ext.autocompl').attach()
" To immitate what happens in plugin/terminal-maps.vim
au FileType dap-repl inoremap <buffer> <unique> <silent> <C-\><C-\> <C-c>
au FileType dap-repl inoremap <buffer> <unique> <silent> <C-h> <C-c>:TmuxNavigateLeft<cr>
au FileType dap-repl inoremap <buffer> <unique> <silent> <C-j> <C-c>:TmuxNavigateDown<cr>
au FileType dap-repl inoremap <buffer> <unique> <silent> <C-k> <C-c>:TmuxNavigateUp<cr>
au FileType dap-repl inoremap <buffer> <unique> <silent> <C-l> <C-c>:TmuxNavigateRight<cr>
au FileType dap-repl inoremap <buffer> <unique> <silent> <C-d> exit<cr>

set completeopt=menu,menuone,noselect
let g:vsnip_snippet_dir = $XDG_CONFIG_HOME . '/nvim/snippets'

" vim:foldmethod=marker:ft=vim
