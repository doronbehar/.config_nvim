#!/bin/sh

# This script modifies fugitive's git push URL for bootstrapping purposes

git -C bundle/fugitive remote add origin https://github.com/tpope/vim-fugitive
git -C bundle/fugitive config branch.master.remote origin
git -C bundle/fugitive config branch.master.pushremote doronbehar
