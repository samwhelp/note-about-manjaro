#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_asset_remove () {

	theme_asset_remove_grub_theme_main

}

theme_asset_remove_grub_theme_main () {

	echo "sudo rm -rf /boot/grub/themes/main"
	sudo rm -rf "/boot/grub/themes/main"

	echo

	# file "/boot/grub/themes/main"
	# ls -l "/boot/grub/themes/main"

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
