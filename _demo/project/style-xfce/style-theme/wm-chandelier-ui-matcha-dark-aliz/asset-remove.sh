#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_wm_chandelier

}

theme_asset_remove_wm_chandelier () {

	echo "rm -rf $HOME/.themes/Chandelier"
	rm -rf "$HOME/.themes/Chandelier"

	echo

	# file "$HOME/.themes/Chandelier"
	# ls -l "$HOME/.themes/Chandelier"

}

##
### Tail: theme
################################################################################


################################################################################
### Head: main
##
main_asset_remove () {

	theme_asset_remove

}
## start
main_asset_remove

##
### Tail: main
################################################################################
