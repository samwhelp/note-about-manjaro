#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_wm_rgaps_line_nobuttons

}

theme_asset_remove_wm_rgaps_line_nobuttons () {

	echo "rm -rf $HOME/.themes/RGapsLineNoButtons"
	rm -rf "$HOME/.themes/RGapsLineNoButtons"

	echo

	# file "$HOME/.themes/RGapsLineNoButtons"
	# ls -l "$HOME/.themes/RGapsLineNoButtons"

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
