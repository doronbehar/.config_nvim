#!/bin/sh

git submodule foreach 'git branch | grep -q "^* master$" && git pull origin master && [[ -d doc ]] && nvim --headless -c "helptags doc" -c "quit" || :'
