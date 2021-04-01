#!/usr/bin/env bash

set -e


################################################################################
### Head: profile
##
profile_config_install () {

	echo "## Config: profile"
	echo

	echo "cp ./config/profile/.profile $HOME/.profile"
	cp ./config/profile/.profile $HOME/.profile

	echo

}
##
### Tail: profile
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	profile_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
