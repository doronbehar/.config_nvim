set rtp+=/run/current-system/sw/share/vim-plugins/fzf
" Until https://github.com/NixOS/nixpkgs/pull/219544 is merged
set rtp+=$HOME/repos/taskwarrior/scripts/vim

if has('nvim')
  augroup suda_smart_edit
    autocmd!
    autocmd BufEnter * nested call SudaBufEnter()
  augroup end

  " This is a wrapper function for suda#BufEnter that checks for some edge cases
  " in which I probably didn't want suda in the first place
  function SudaBufEnter()
    if !empty($NO_SUDA)
      return
    endif
    if &diff
      " disable if launched in diffmode in diff mode
      return
    endif
    let realpath = resolve(expand('<afile>'))
    if realpath =~ '^/nix' || realpath =~ '^/var'
      return
    endif
    call suda#BufEnter()
  endfunction
endif

