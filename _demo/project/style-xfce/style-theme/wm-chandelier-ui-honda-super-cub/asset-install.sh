#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_wm_chandelier
	theme_asset_install_ui_honda_super_cub

}


theme_asset_install_wm_chandelier () {

	theme_asset_install_wm_chandelier_clone

	echo "$(pacman -Ql xfce4-settings | grep appearance-install-theme | cut -d ' ' -f 2) 'asset/addy-dclxvi_xfwm4-theme-collections/Chandelier'"
	#/usr/lib/xfce4/settings/appearance-install-theme 'asset/Drzaln_Nema/Chandelier'
	$(pacman -Ql xfce4-settings | grep appearance-install-theme | cut -d ' ' -f 2) 'asset/addy-dclxvi_xfwm4-theme-collections/Chandelier'


	echo

	file "$HOME/.themes/Chandelier"
	ls -l "$HOME/.themes/Chandelier"

	echo

}

theme_asset_install_wm_chandelier_clone () {
	if [ -a 'asset/addy-dclxvi_xfwm4-theme-collections' ]; then ## file is exists
		echo "File Exists: asset/addy-dclxvi_xfwm4-theme-collections"
		return 0
	fi


		## https://github.com/addy-dclxvi/xfwm4-theme-collections/tree/master/Chandelier


		git clone 'https://github.com/addy-dclxvi/xfwm4-theme-collections.git' 'asset/addy-dclxvi_xfwm4-theme-collections'
		echo "git clone 'https://github.com/addy-dclxvi/xfwm4-theme-collections.git' 'asset/addy-dclxvi_xfwm4-theme-collections'"

}


theme_asset_install_ui_honda_super_cub () {

	theme_asset_install_ui_honda_super_cub_clone


	#echo "$(pacman -Ql xfce4-settings | grep appearance-install-theme | cut -d ' ' -f 2) 'asset/reorr_gtk-my-theme-collection/Honda Super Cub'"
	#/usr/lib/xfce4/settings/appearance-install-theme 'asset/reorr_gtk-my-theme-collection/Honda Super Cub'
	#$(pacman -Ql xfce4-settings | grep appearance-install-theme | cut -d ' ' -f 2) 'asset/reorr_gtk-my-theme-collection/Honda Super Cub'

	theme_asset_install_ui_honda_super_cub_to_local

	echo

	file "$HOME/.themes/Honda-Super-Cub"
	ls -l "$HOME/.themes/Honda-Super-Cub"

	echo

}

theme_asset_install_ui_honda_super_cub_clone () {

	if [ -a 'asset/reorr_gtk-my-theme-collection' ]; then ## file is exists
		echo "File Exists: asset/reorr_gtk-my-theme-collection"
		return 0
	fi

	## https://github.com/reorr/my-theme-collection/tree/master/Honda%20Super%20Cub

	echo "git clone 'https://github.com/reorr/my-theme-collection.git' 'asset/reorr_gtk-my-theme-collection'"
	git clone 'https://github.com/reorr/my-theme-collection.git' 'asset/reorr_gtk-my-theme-collection'

}

theme_asset_install_ui_honda_super_cub_to_local () {
	if [ -a "$HOME/.themes/Honda-Super-Cub" ]; then ## file is exists
		echo "File Exists: $HOME/.themes/Honda-Super-Cub"
		return 0
	fi

	mkdir -p "$HOME/.themes"

	cp -a 'asset/reorr_gtk-my-theme-collection/Honda Super Cub/.themes/Honda-Super-Cub' "$HOME/.themes/Honda-Super-Cub"
	##cp -a 'asset/reorr_gtk-my-theme-collection/Honda Super Cub/.themes/Honda-Super-Cub' "$HOME/.local/share/themes/Honda-Super-Cub"
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
