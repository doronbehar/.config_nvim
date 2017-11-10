" If doing a diff. Upon:
" - leaving insert mode
" - and not moving the cursor for a while
" automatically update the differences
" (credit: https://groups.google.com/forum/#!topic/vim_use/ZNZcBAABDgE)
augroup AutoDiff
  au!
  autocmd InsertLeave * if &diff | diffupdate | let b:old_changedtick = b:changedtick | endif
  autocmd CursorHold *
        \ if &diff &&
        \    (!exists('b:old_changedtick') || b:old_changedtick != b:changedtick) |
        \   let b:old_changedtick = b:changedtick | diffupdate |
        \ endif
augroup END
