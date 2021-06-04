#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_gtk_theme_obsidian_2_gray

}

theme_asset_remove_gtk_theme_obsidian_2_gray () {

	echo "sudo rm -rf /boot/grub/themes/virtual_future"
	sudo rm -rf "/boot/grub/themes/virtual_future"

	echo

	# file "$HOME/.themes/Obsidian-2-Gray"
	# ls -l "$HOME/.themes/Obsidian-2-Gray"

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
