#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_wm_rgaps_blend_nobuttons

}

theme_asset_remove_wm_rgaps_blend_nobuttons () {

	echo "rm -rf $HOME/.themes/RGapsBlendNoButtons"
	rm -rf "$HOME/.themes/RGapsBlendNoButtons"

	echo

	# file "$HOME/.themes/RGapsBlendNoButtons"
	# ls -l "$HOME/.themes/RGapsBlendNoButtons"

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
