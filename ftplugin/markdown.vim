setlocal spell
call smartwrap#set()
setlocal keywordprg=trans\ -no-ansi
setlocal foldmethod=expr
let b:lexima_disabled = 1
" https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#highlighting
" For markdown specifically, it is mainly useful for code snippets that have a
" syntax highlighting language specifier.
lua vim.treesitter.start()
