#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_theme_honda_super_cub
	theme_asset_install_theme_rgapsline

}

theme_asset_install_theme_honda_super_cub () {

	theme_asset_install_theme_honda_super_cub_clone


	#echo "$(pacman -Ql xfce4-settings | grep appearance-install-theme | cut -d ' ' -f 2) 'asset/reorr_gtk-my-theme-collection/Honda Super Cub'"
	#/usr/lib/xfce4/settings/appearance-install-theme 'asset/reorr_gtk-my-theme-collection/Honda Super Cub'
	#$(pacman -Ql xfce4-settings | grep appearance-install-theme | cut -d ' ' -f 2) 'asset/reorr_gtk-my-theme-collection/Honda Super Cub'

	theme_asset_install_theme_honda_super_cub_to_local

	echo

	file "$HOME/.themes/Honda-Super-Cub"
	ls -l "$HOME/.themes/Honda-Super-Cub"

	echo

}

theme_asset_install_theme_honda_super_cub_clone () {

	if [ -a 'asset/reorr_gtk-my-theme-collection' ]; then ## file is exists
		echo "File Exists: asset/reorr_gtk-my-theme-collection"
		return 0
	fi

	## https://github.com/reorr/my-theme-collection/tree/master/Honda%20Super%20Cub

	echo "git clone 'https://github.com/reorr/my-theme-collection.git' 'asset/reorr_gtk-my-theme-collection'"
	git clone 'https://github.com/reorr/my-theme-collection.git' 'asset/reorr_gtk-my-theme-collection'

}

theme_asset_install_theme_honda_super_cub_to_local () {
	if [ -a "$HOME/.themes/Honda-Super-Cub" ]; then ## file is exists
		echo "File Exists: $HOME/.themes/Honda-Super-Cub"
		return 0
	fi

	mkdir -p "$HOME/.themes"

	cp -a 'asset/reorr_gtk-my-theme-collection/Honda Super Cub/.themes/Honda-Super-Cub' "$HOME/.themes/Honda-Super-Cub"
	##cp -a 'asset/reorr_gtk-my-theme-collection/Honda Super Cub/.themes/Honda-Super-Cub' "$HOME/.local/share/themes/Honda-Super-Cub"
}

theme_asset_install_theme_rgapsline () {

	theme_asset_install_theme_rgapsline_clone

	echo "$(pacman -Ql xfce4-settings | grep appearance-install-theme | cut -d ' ' -f 2) 'asset/Drzaln_Nema/RGapsLine'"
	#/usr/lib/xfce4/settings/appearance-install-theme 'asset/Drzaln_Nema/RGapsLine'
	$(pacman -Ql xfce4-settings | grep appearance-install-theme | cut -d ' ' -f 2) 'asset/Drzaln_Nema/RGapsLine'


	echo

	file "$HOME/.themes/RGapsLine"
	ls -l "$HOME/.themes/RGapsLine"

	echo

}

theme_asset_install_theme_rgapsline_clone () {
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
