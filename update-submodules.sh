#!/bin/sh

git submodule foreach 'git pull && [[ -d doc ]] && $EDITOR -es --cmd "helptags doc" --cmd "quit" && git -C ../.. add $path || :'

# next thing to do, is update the list of disabled plugins according to the symlinks in pack/*/opt vs pack/*/start
nvim --cmd 'source update-submodules.vim' --cmd 'quit'
