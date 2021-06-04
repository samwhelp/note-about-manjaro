#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_grub_theme_virtual_future

}

theme_asset_install_grub_theme_virtual_future () {

	theme_asset_install_grub_theme_virtual_future_clone

	theme_asset_install_grub_theme_virtual_future_to_system

	echo

	file '/boot/grub/themes/virtual_future'
	ls -l '/boot/grub/themes/virtual_future'

	echo

}

theme_asset_install_grub_theme_virtual_future_clone () {

	if [ -a 'asset/deck451-virtual_future_grub_theme' ]; then ## file is exists
		echo "File Exists: asset/deck451-virtual_future_grub_theme"
		return 0
	fi

	## https://www.gnome-look.org/p/1529571/
	## https://gitlab.com/deck451/virtual_future_grub_theme
	## https://gitlab.com/deck451/virtual_future_grub_theme/-/tree/main/virtual_future

	echo "git clone 'https://gitlab.com/deck451/virtual_future_grub_theme.git' 'asset/deck451-virtual_future_grub_theme'"
	git clone 'https://gitlab.com/deck451/virtual_future_grub_theme.git' 'asset/deck451-virtual_future_grub_theme'

}

theme_asset_install_grub_theme_virtual_future_to_system () {

	if [ -a "/boot/grub/themes/virtual_future" ]; then ## file is exists
		echo "File Exists: /boot/grub/themes/virtual_future"
		return 0
	fi

	sudo mkdir -p "/boot/grub/themes"

	sudo cp -a 'asset/deck451-virtual_future_grub_theme/virtual_future' '/boot/grub/themes/virtual_future'
	##sudo cp -a 'asset/deck451-virtual_future_grub_theme/virtual_future' '/usr/share/grub/themes/virtual_future'

}








##
### Tail: theme
################################################################################


################################################################################
### Head: main
##
main_asset_install_prepare_dir () {
	mkdir -p 'asset'
}

main_asset_install () {

	main_asset_install_prepare_dir

	theme_asset_install


}
## start
main_asset_install

##
### Tail: main
################################################################################
