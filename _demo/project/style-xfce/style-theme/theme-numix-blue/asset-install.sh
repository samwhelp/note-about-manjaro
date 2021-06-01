#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_gtk_theme_numix_blue
	theme_asset_install_icon_theme_numix

}

theme_asset_install_gtk_theme_numix_blue () {

	## create dir
	mkdir -p 'asset/numix-blue-gtk-theme'

	cd 'asset/numix-blue-gtk-theme'

	## download

	wget -c 'http://tw.archive.ubuntu.com/ubuntu/pool/universe/u/ubuntustudio-look/numix-blue-gtk-theme_20.04.1_all.deb'

	## extract
	## https://github.com/samwhelp/note-about-deb/tree/gh-pages/_demo/deb/concept/start
	ar x 'numix-blue-gtk-theme_20.04.1_all.deb'

	mkdir -p 'numix-blue-gtk-theme'

	tar -p -C 'numix-blue-gtk-theme' -xf 'data.tar.xz'

	## install
	theme_asset_install_gtk_theme_numix_blue_to_local


	## back
	cd ../..
}

theme_asset_install_gtk_theme_numix_blue_to_local () {
	if [ -a "$HOME/.themes/NumixBlue" ]; then ## file is exists
		echo "File Exists: $HOME/.themes/NumixBlue"
		return 0
	fi

	mkdir -p "$HOME/.themes"

	cp -a 'numix-blue-gtk-theme/usr/share/themes/NumixBlue' "$HOME/.themes/NumixBlue"
	##cp -a 'numix-blue-gtk-theme/usr/share/themes/NumixBlue' "$HOME/.local/share/themes/NumixBlue"
}

theme_asset_install_icon_theme_numix () {

	## create dir
	mkdir -p 'asset/numix-icon-theme'

	cd 'asset/numix-icon-theme'

	## download

	wget -c 'http://tw.archive.ubuntu.com/ubuntu/pool/universe/n/numix-icon-theme/numix-icon-theme_0~20190920-1_all.deb'

	## extract
	## https://github.com/samwhelp/note-about-deb/tree/gh-pages/_demo/deb/concept/start
	ar x 'numix-icon-theme_0~20190920-1_all.deb'

	mkdir -p 'numix-icon-theme'

	tar -p -C 'numix-icon-theme' -xf 'data.tar.xz'


	## install
	theme_asset_install_icon_theme_numix_to_local
	theme_asset_install_icon_theme_numix_light_to_local

	## back
	cd ../..
}


theme_asset_install_icon_theme_numix_to_local () {
	if [ -a "$HOME/.icons/Numix" ]; then ## file is exists
		echo "File Exists: $HOME/.icons/Numix"
		return 0
	fi

	mkdir -p "$HOME/.icons"

	cp -a 'numix-icon-theme/usr/share/icons/Numix' "$HOME/.icons/Numix"
	##cp -a 'numix-icon-theme/usr/share/icons/Numix' "$HOME/.local/share/icons/Numix"
}


theme_asset_install_icon_theme_numix_light_to_local () {
	if [ -a "$HOME/.icons/Numix-Light" ]; then ## file is exists
		echo "File Exists: $HOME/.icons/Numix-Light"
		return 0
	fi

	mkdir -p "$HOME/.icons"

	cp -a 'numix-icon-theme/usr/share/icons/Numix-Light' "$HOME/.icons/Numix-Light"
	##cp -a 'numix-icon-theme/usr/share/icons/Numix-Light' "$HOME/.local/share/icons/Numix-Light"
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
