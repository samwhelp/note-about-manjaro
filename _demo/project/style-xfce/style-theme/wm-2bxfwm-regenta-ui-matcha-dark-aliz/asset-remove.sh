#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_wm_2bxfwm_regenta

}

theme_asset_remove_wm_2bxfwm_regenta () {

	echo "rm -rf $HOME/.themes/2bxfwm-Regenta"
	rm -rf "$HOME/.themes/2bxfwm-Regenta"

	echo

	# file "$HOME/.themes/2bxfwm-Regenta"
	# ls -l "$HOME/.themes/2bxfwm-Regenta"

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
