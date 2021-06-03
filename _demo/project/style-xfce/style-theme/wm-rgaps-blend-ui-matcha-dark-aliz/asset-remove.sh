#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_wm_rgaps_blend

}

theme_asset_remove_wm_rgaps_blend () {

	echo "rm -rf $HOME/.themes/RGapsBlend"
	rm -rf "$HOME/.themes/RGapsBlend"

	echo

	# file "$HOME/.themes/RGapsBlend"
	# ls -l "$HOME/.themes/RGapsBlend"

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
