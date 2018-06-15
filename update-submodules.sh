#!/bin/sh

git submodule foreach 'git pull origin master && [[ -d doc ]] && nvim --headless -c "helptags doc" -c "quit" || :'
