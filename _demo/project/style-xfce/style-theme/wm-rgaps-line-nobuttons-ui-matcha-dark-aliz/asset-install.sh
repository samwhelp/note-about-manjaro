#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_wm_rgaps_line_nobuttons

}


theme_asset_install_wm_rgaps_line_nobuttons () {

	theme_asset_install_wm_rgaps_line_nobuttons_clone

	echo "$(pacman -Ql xfce4-settings | grep appearance-install-theme | cut -d ' ' -f 2) 'asset/Drzaln_Nema/RGapsLineNoButtons'"
	#/usr/lib/xfce4/settings/appearance-install-theme 'asset/Drzaln_Nema/RGapsBlend'
	$(pacman -Ql xfce4-settings | grep appearance-install-theme | cut -d ' ' -f 2) 'asset/Drzaln_Nema/RGapsLineNoButtons'


	echo

	file "$HOME/.themes/RGapsLineNoButtons"
	ls -l "$HOME/.themes/RGapsLineNoButtons"

	echo

}

theme_asset_install_wm_rgaps_line_nobuttons_clone () {
	if [ -a 'asset/Drzaln_Nema' ]; then ## file is exists
		echo "File Exists: asset/Drzaln_Nema"
		return 0
	fi

	# https://www.xfce-look.org/search/projectSearchText/RGapsLineNoButtons
	# https://www.xfce-look.org/search/projectSearchText/RGaps
	# https://www.xfce-look.org/p/1174081/

	# https://www.xfce-look.org/p/1267505/
	# https://github.com/Drzaln/Nema/tree/master/RGapsLineNoButtons

	echo "git clone 'https://github.com/Drzaln/Nema.git' 'asset/Drzaln_Nema'"
	git clone 'https://github.com/Drzaln/Nema.git' 'asset/Drzaln_Nema'

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
