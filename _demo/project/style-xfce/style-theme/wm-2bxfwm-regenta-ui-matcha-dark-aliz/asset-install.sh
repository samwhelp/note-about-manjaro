#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_wm_2bxfwm_regenta

}


theme_asset_install_wm_2bxfwm_regenta () {

	theme_asset_install_wm_2bxfwm_regenta_clone

	echo "$(pacman -Ql xfce4-settings | grep appearance-install-theme | cut -d ' ' -f 2) 'asset/addy-dclxvi_xfwm4-theme-collections/2bxfwm-Regenta'"
	#/usr/lib/xfce4/settings/appearance-install-theme 'asset/addy-dclxvi_xfwm4-theme-collections/2bxfwm-Regenta'
	$(pacman -Ql xfce4-settings | grep appearance-install-theme | cut -d ' ' -f 2) 'asset/addy-dclxvi_xfwm4-theme-collections/2bxfwm-Regenta'


	echo

	file "$HOME/.themes/2bxfwm-Regenta"
	ls -l "$HOME/.themes/2bxfwm-Regenta"

	echo

}

theme_asset_install_wm_2bxfwm_regenta_clone () {
	if [ -a 'asset/addy-dclxvi_xfwm4-theme-collections' ]; then ## file is exists
		echo "File Exists: asset/addy-dclxvi_xfwm4-theme-collections"
		return 0
	fi

	## https://github.com/addy-dclxvi/xfwm4-theme-collections/tree/master/2bxfwm-Lucy


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
