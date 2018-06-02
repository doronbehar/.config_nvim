let s:line1 = getline(1)
if s:line1 =~# '^#compdef\>' || s:line1 =~# '^#autoload\>'
	set filetype=zshcomp.zsh
endif
