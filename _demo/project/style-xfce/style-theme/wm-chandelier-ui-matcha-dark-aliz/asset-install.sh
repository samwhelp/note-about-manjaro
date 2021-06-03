#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_wm_chandelier

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
