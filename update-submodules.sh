#!/bin/sh

git submodule foreach 'git pull && [[ -d doc ]] && $EDITOR -es --cmd "helptags doc" --cmd "quit" && git -C ../.. add $path || :'
