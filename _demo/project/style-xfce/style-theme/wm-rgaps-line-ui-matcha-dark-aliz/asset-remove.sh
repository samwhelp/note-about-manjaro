#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_wm_rgaps_blend_line

}

theme_asset_remove_wm_rgaps_blend_line () {

	echo "rm -rf $HOME/.themes/RGapsLine"
	rm -rf "$HOME/.themes/RGapsLine"

	echo

	# file "$HOME/.themes/RGapsLine"
	# ls -l "$HOME/.themes/RGapsLine"

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
