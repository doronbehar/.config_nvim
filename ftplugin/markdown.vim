setlocal spell
call smartwrap#set()
setlocal keywordprg=:!dict
let b:ale_enabled = 1
let b:ale_linters = ['textlint']
