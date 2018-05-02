#!/bin/sh

git submodule foreach 'git pull origin master && nvim --headless -c "helptags doc" -c "quit" || :'
