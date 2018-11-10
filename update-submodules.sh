#!/bin/bash

for k in ~/.ssh/git{hub,lab}; do
	grep --file <(ssh-add -L | cut -d' ' -f2) ~/.ssh/*.pub -l | grep -q "$k" || ssh-add "$k"
done
git submodule foreach 'git branch | grep -q "^* master$" && git pull origin master && [[ -d doc ]] && $EDITOR -es --cmd "helptags doc" --cmd "quit" && git -C ../.. add $path || :'
