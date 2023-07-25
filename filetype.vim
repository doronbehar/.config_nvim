au BufNewFile,BufRead .luacompleterc setf json

augroup systemdDaemonReload
	au! BufNewFile,BufRead */.config/systemd/user/*.service au BufWritePost <buffer> !systemctl --user daemon-reload
	au! BufNewFile,BufRead */.config/systemd/user/*.timer au BufWritePost <buffer> !systemctl --user daemon-reload
	au! BufNewFile,BufRead */.config/systemd/user/*.socket au BufWritePost <buffer> !systemctl --user daemon-reload
augroup END

augroup desktopDbReload
	au! BufNewFile,BufRead */.local/share/applications/*.desktop au! BufWritePost <buffer> !update-desktop-database $HOME/.local/share/applications
augroup END

augroup mimeDbReload
	au! BufNewFile,BufRead */.local/share/mime/* au! BufWritePost <buffer> !update-mime-database $HOME/.local/share/mime
augroup END

au BufNewFile,BufRead *.vifm setf vifm

au BufNewFile,BufRead *.nfo setf text

au BufNewFile,BufRead /dev/shm/gopass.* setlocal noswapfile nobackup noundofile | let b:stay_ignore = 1
au BufNewFile,BufRead ~/.config/systemd/user/*.d/*override.conf* setlocal noswapfile nobackup noundofile | let b:stay_ignore = 1

au BufNewFile,BufRead ~/.mozilla/firefox/*/itsalltext/*stackexchange.com_* setf markdown | let b:stay_ignore = 1
au BufNewFile,BufRead ~/.mozilla/firefox/*/itsalltext/stackoverflow.com_* setf markdown | let b:stay_ignore = 1
au BufNewFile,BufRead ~/.mozilla/firefox/*/itsalltext/github.com_*_*_issues_* setf markdown | let b:stay_ignore = 1
au BufNewFile,BufRead ~/.mozilla/firefox/*/itsalltext/*.wikipedia.org_w_index.php.* setf mediawiki | let b:stay_ignore = 1
au BufNewFile,BufRead ~/.mozilla/firefox/*/itsalltext/* setf itsalltext | let b:stay_ignore = 1

au BufNewFile,BufRead /var/src/nixpkgs/**.nix setf nix.nixpkgs

" LAMMPS
au BufNewFile,BufRead *.lammps setf lammps

" GhostText / Firenvim
au BufNewFile,BufRead ghost-*.txt set expandtab
au BufNewFile,BufRead *stackexchange.com* setf markdown | let b:stay_ignore = 1
au BufNewFile,BufRead stackoverflow.com* setf markdown | let b:stay_ignore = 1
au BufNewFile,BufRead github.com* setf markdown | let b:stay_ignore = 1
au BufNewFile,BufRead latex.codecogs.com* setf tex | let b:stay_ignore = 1
au BufNewFile,BufRead *wikipedia.org* setf mediawiki | let b:stay_ignore = 1
au BufNewFile,BufRead *nixos.wiki* setf mediawiki | let b:stay_ignore = 1
" au BufNewFile,BufRead * setf itsalltext | let b:stay_ignore = 1

au BufNewFile,BufRead neomutt-*-\w\+,neomutt[[:alnum:]_-]\\\{6\} if getline(1) =~# '^<!DOCTYPE html' | setfiletype html | elseif getline(1) =~# '^#\+ [A-Z]' | setfiletype pandoc | endif | setlocal noswapfile nobackup noundofile | let b:stay_ignore = 1
au BufNewFile,BufRead ~/.cache/mutt/compositions/* let g:pandoc#command#autoexec_on_writes = 1 | let b:pandoc_command_autoexec_command = 'Pandoc #mail_html'
