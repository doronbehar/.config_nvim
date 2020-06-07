" if exists("current_compiler")
  " finish
" endif
" let current_compiler = "mine"
CompilerSet makeprg=env\ nix-env\ -f\ ./outpaths.nix\ -qaP\ --no-name\ --out-path\ --arg\ checkMeta\ true
