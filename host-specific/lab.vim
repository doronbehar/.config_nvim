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
