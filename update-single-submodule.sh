#!/bin/sh

set -e

regular_update(){
	git pull
	if [[ -d doc ]]; then
		$EDITOR -es --cmd "helptags doc" --cmd "quit"
	fi
	git -C ../../../.. add $(readlink -f $PWD)
}

red=`tput setaf 1`
green=`tput setaf 3`
yellow=`tput setaf 3`
reset=`tput sgr0`
abbrev_ref="$(git rev-parse --abbrev-ref HEAD)"
if [[ "$abbrev_ref" == "HEAD" ]]; then
	echo ${green}
	git checkout master || git checkout main
	echo ${reset}
	regular_update
	exit $?
fi
if [[ "$abbrev_ref" == master ]] || [[ "$abbrev_ref" == main ]]; then
	regular_update
else
	echo "${red}Checked out branch is ${yellow}\`$abbrev_ref\`${red}, not updating...${reset}"
fi
