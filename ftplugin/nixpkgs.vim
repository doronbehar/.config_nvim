" for testing changed paths https://github.com/NixOS/ofborg#how-does-ofborg-call-nix-instantiate
setlocal makeprg=env\ nix-env\ -f\ ./outpaths.nix\ -qaP\ --no-name\ --out-path\ --arg\ checkMeta\ true
" More useful for the makeprg above:
setlocal errorformat=error:\ %m\\,\ at\ %f:%l:%c
