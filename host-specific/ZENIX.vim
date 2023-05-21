runtime host-specific/nix-suda.vim
luafile $XDG_CONFIG_HOME/nvim/host-specific/ZENIX.lua

nnoremap <silent> <leader>c :lua require'dap'.continue()<CR>
nnoremap <silent> <leader>o :lua require'dap'.step_over()<CR>
nnoremap <silent> <leader>s :lua require'dap'.step_into()<CR>
nnoremap <silent> <leader>u :lua require'dap'.step_out()<CR>
nnoremap <silent> <leader>b :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <leader>dr :lua require'dap'.repl.toggle()<CR>
nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>
" https://github.com/mfussenegger/nvim-dap-python#mappings
nnoremap <silent> <leader>dn :lua require('dap-python').test_method()<CR>
nnoremap <silent> <leader>df :lua require('dap-python').test_class()<CR>
vnoremap <silent> <leader>ds <ESC>:lua require('dap-python').debug_selection()<CR>
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
