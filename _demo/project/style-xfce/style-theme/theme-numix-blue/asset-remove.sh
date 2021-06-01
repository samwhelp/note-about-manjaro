#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_gtk_theme_numix_blue
	theme_asset_remove_icon_theme_numix

}

theme_asset_remove_gtk_theme_numix_blue () {

	echo "rm -rf $HOME/.themes/NumixBlue"
	rm -rf "$HOME/.themes/NumixBlue"


	echo

	# file "$HOME/.themes/NumixBlue"
	# ls -l "$HOME/.themes/NumixBlue"

}

theme_asset_remove_icon_theme_numix () {

	echo "rm -rf $HOME/.icons/Numix"
	rm -rf "$HOME/.icons/Numix"

	echo "rm -rf $HOME/.icons/Numix-Light"
	rm -rf "$HOME/.icons/Numix-Light"

	echo

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
