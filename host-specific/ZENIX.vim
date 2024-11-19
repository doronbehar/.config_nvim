runtime host-specific/nix-suda.vim

" These plugins don't abort errorlessly when vim is used with them
packadd sonokai
packadd fzf-lua
packadd ghost
packadd firenvim
packadd treesitter-textobjects

set termguicolors
" From some reason terminal colors like similar to those outside :term with
" this
let g:sonokai_disable_terminal_colors = 1
let g:sonokai_colors_override = {'bg0': ['#000000', '0']}
colorscheme sonokai
luafile $XDG_CONFIG_HOME/nvim/host-specific/ZENIX.lua

" See :help dao-completion
au FileType dap-repl lua require('dap.ext.autocompl').attach()
" To immitate what happens in plugin/terminal-maps.vim
au FileType dap-repl inoremap <buffer> <silent> <C-\><C-\> <C-c>
au FileType dap-repl inoremap <buffer> <silent> <C-h> <C-c>:TmuxNavigateLeft<cr>
au FileType dap-repl inoremap <buffer> <silent> <C-j> <C-c>:TmuxNavigateDown<cr>
au FileType dap-repl inoremap <buffer> <silent> <C-k> <C-c>:TmuxNavigateUp<cr>
au FileType dap-repl inoremap <buffer> <silent> <C-l> <C-c>:TmuxNavigateRight<cr>
au FileType dap-repl inoremap <buffer> <silent> <C-d> exit<cr>

set completeopt=menu,menuone,noselect
let g:vsnip_snippet_dir = $XDG_CONFIG_HOME . '/nvim/snippets'

" vim:foldmethod=marker:ft=vim
