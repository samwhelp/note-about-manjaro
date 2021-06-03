#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_wm_chandelier
	theme_asset_remove_ui_honda_super_cub


}

theme_asset_remove_wm_chandelier () {

	echo "rm -rf $HOME/.themes/Chandelier"
	rm -rf "$HOME/.themes/Chandelier"

	echo

	# file "$HOME/.themes/Chandelier"
	# ls -l "$HOME/.themes/Chandelier"

}

theme_asset_remove_ui_honda_super_cub () {

	echo "rm -rf $HOME/.themes/Honda-Super-Cub"
	rm -rf "$HOME/.themes/Honda-Super-Cub"


	echo

	# file "$HOME/.themes/Honda-Super-Cub"
	# ls -l "$HOME/.themes/Honda-Super-Cub"

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
