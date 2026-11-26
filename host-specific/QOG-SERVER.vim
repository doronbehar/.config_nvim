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
" Because we use `msys/man-db` on this system, which experiences a full UNIX
" emulation, we want to revert the cygwin paths translation done (probably) by
" Neovim. This fixes `:Man` commands.
let $MANPATH = systemlist('cygpath --unix --path "' . $MANPATH . '"')[0]
runtime host-specific/ZENIX.vim
luafile $XDG_CONFIG_HOME/nvim/host-specific/QOG-SERVER.lua
" Clipboard: exchanged with the workstation on the other end of the ssh
" connection, over the TCP ports that `ssh-lab` reverse-forwards here - see
" .bin/tcp-clip-get and .bin/tcp-clip-set, and windows/ssh/CLIPBOARD.md.
" Without those ports - a plain `ssh lab` - both scripts fall back to
" /dev/clipboard, which is the clipboard of that one ssh connection.  That
" fallback also replaces the old clip.exe + `Get-Clipboard -Raw` pair, which
" mangled non-ASCII text through the console code page and needed the carriage
" returns stripped (https://superuser.com/q/1902895/430539).
"
" The `zsh -c` is not decoration: Neovim here is a native Windows build, and
" provider/clipboard.vim splits a string command on spaces and execs it
" directly, with no shell, so it cannot run a shebang script on its own.
let g:clipboard = {
\   'name': 'ssh-clipboard-forward',
\   'copy': {
\      '+': ['zsh', '-c', 'tcp-clip-set'],
\      '*': ['zsh', '-c', 'tcp-clip-set'],
\    },
\   'paste': {
\      '+': ['zsh', '-c', 'tcp-clip-get'],
\      '*': ['zsh', '-c', 'tcp-clip-get'],
\   },
\ }
