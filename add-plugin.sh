#!/bin/sh

set -e

if [ $# -lt 2 ]; then
	echo usage: $0 '<clone URL>' '<category directory in pack/>' '<directory name in bundle/>'
	echo last argument is optional - if not given, it\'ll be infered from the 2nd
	exit 2
fi
if [[ -z "$3" ]]; then
	plugin_name_stripped=${1##*/}
	plugin_name_stripped=${plugin_name_stripped#vim-}
	plugin_name_stripped=${plugin_name_stripped#nvim-}
	green=$(tput setaf 2)
	reset=$(tput sgr0)
	echo The plugin will be named $green"$plugin_name_stripped"$reset inside bundle and pack/$2/
	echo Are you O.K with that? Press '<C-c>' to abort
	read
else
	plugin_name_stripped="$3"
fi
echo @@@ Cloning...
echo git submodule add "$1" "bundle/$plugin_name_stripped"
echo @@@ linking "bundle/$plugin_name_stripped" to pack/"$2"/start/
echo ln -s -r "bundle/$plugin_name_stripped" -t pack/"$2"/start/
echo @@@ updating help tags
echo $EDITOR -es --cmd "helptags bundle/$plugin_name_stripped/doc" --cmd "quit"
echo @@@ updating .pathogen_disabled.vim
echo nvim --cmd 'source update-submodules.vim' --cmd 'quit'
