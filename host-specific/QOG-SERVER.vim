" I use on this machine MSYS2 with ZSH, not cmd.exe
set shellcmdflag=-c
set shellxescape=
set shellxquote=
set shellquote=
set shellpipe=2>&1\|\ tee
set shellredir=2>&1\|\ tee

" Installed imperatively
packadd treesitter
packadd blink.lib
packadd blink
let $DISPLAY='windows'
runtime host-specific/ZENIX.vim
" Based upon https://superuser.com/q/1902895/430539 - strip the carriage
" returns
let g:clipboard = {
\   'name': 'win32ansi',
\   'copy': {
\      '+': 'clip.exe',
\      '*': 'clip.exe',
\    },
\   'paste': {
\      '+': ['powershell.exe', '-NoProfile', '-Command', '[Console]::Out.Write($(Get-Clipboard -Raw).ToString().Replace("`r", ""))'],
\      '*': ['powershell.exe', '-NoProfile', '-Command', '[Console]::Out.Write($(Get-Clipboard -Raw).ToString().Replace("`r", ""))'],
\   },
\ }
