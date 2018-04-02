#!/bin/sh

git submodule foreach 'git pull && nvim --headless -c "helptags doc" -c "quit"'
