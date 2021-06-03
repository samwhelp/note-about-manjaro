#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_wm_pastel_dark
	theme_asset_remove_ui_honda_super_cub

}

theme_asset_remove_wm_pastel_dark () {

	echo "rm -rf $HOME/.themes/Pastel_Dark"
	rm -rf "$HOME/.themes/Pastel_Dark"

	echo

	# file "$HOME/.themes/Pastel_Dark"
	# ls -l "$HOME/.themes/Pastel_Dark"

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
