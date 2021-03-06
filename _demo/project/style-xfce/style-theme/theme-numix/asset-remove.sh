#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_gtk_theme_numix
	theme_asset_remove_icon_theme_numix_circle

}

theme_asset_remove_gtk_theme_numix () {

	echo "rm -rf $HOME/.themes/Numix"
	rm -rf "$HOME/.themes/Numix"


	echo

	# file "$HOME/.themes/NumixBlue"
	# ls -l "$HOME/.themes/NumixBlue"

}

theme_asset_remove_icon_theme_numix_circle () {

	echo "rm -rf $HOME/.icons/Numix-Circle"
	rm -rf "$HOME/.icons/Numix-Circle"

	echo "rm -rf $HOME/.icons/Numix-Circle-Light"
	rm -rf "$HOME/.icons/Numix-Circle-Light"

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
