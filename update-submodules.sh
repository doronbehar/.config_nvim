#!/bin/sh

thisdir=$(readlink -f -- $(dirname "$0"))

git submodule foreach "$thisdir/update-single-submodule.sh || :"
