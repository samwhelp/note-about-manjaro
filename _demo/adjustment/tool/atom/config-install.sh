#!/usr/bin/env bash

set -e


################################################################################
### Head: atom
##
atom_config_install () {

	echo "## Config: atom"
	echo

	echo "mkdir -p $HOME/.atom"
	mkdir -p "$HOME/.atom"


	echo "install -Dm644 ./config/atom/config.cson $HOME/.atom/config.cson"
	install -Dm644 "./config/atom/config.cson" "$HOME/.atom/config.cson"

	echo
}
##
### Tail: atom
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	atom_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
