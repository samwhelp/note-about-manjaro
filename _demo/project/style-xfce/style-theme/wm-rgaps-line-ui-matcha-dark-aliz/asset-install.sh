#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_wm_rgaps_blend_line

}


theme_asset_install_wm_rgaps_blend_line () {

	theme_asset_install_wm_rgaps_blend_line_clone

	echo "$(pacman -Ql xfce4-settings | grep appearance-install-theme | cut -d ' ' -f 2) 'asset/Drzaln_Nema/RGapsLine'"
	#/usr/lib/xfce4/settings/appearance-install-theme 'asset/Drzaln_Nema/RGapsLine'
	$(pacman -Ql xfce4-settings | grep appearance-install-theme | cut -d ' ' -f 2) 'asset/Drzaln_Nema/RGapsLine'


	echo

	file "$HOME/.themes/RGapsLine"
	ls -l "$HOME/.themes/RGapsLine"

	echo

}

theme_asset_install_wm_rgaps_blend_line_clone () {
	if [ -a 'asset/Drzaln_Nema' ]; then ## file is exists
		echo "File Exists: asset/Drzaln_Nema"
		return 0
	fi

	# https://www.xfce-look.org/search/projectSearchText/RGapsLine
	# https://www.xfce-look.org/search/projectSearchText/RGaps
	# https://www.xfce-look.org/p/1174081/

	# https://www.xfce-look.org/p/1267505/
	# https://github.com/Drzaln/Nema/tree/master/RGapsLine

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
