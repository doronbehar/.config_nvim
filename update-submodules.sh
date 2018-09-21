#!/bin/sh

git submodule foreach 'git branch | grep -q "^* master$" && git pull origin master && [[ -d doc ]] && $EDITOR -es --cmd "helptags doc" --cmd "quit" && git -C ../.. add $path || :'
