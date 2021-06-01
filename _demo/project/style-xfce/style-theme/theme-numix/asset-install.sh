#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_gtk_theme_numix
	theme_asset_install_icon_theme_numix_circle

}

theme_asset_install_gtk_theme_numix () {

	## create dir
	mkdir -p 'asset/numix-gtk-theme'

	cd 'asset/numix-gtk-theme'

	## download

	wget -c 'http://tw.archive.ubuntu.com/ubuntu/pool/universe/n/numix-gtk-theme/numix-gtk-theme_2.6.7-5_all.deb'

	## extract
	## https://github.com/samwhelp/note-about-deb/tree/gh-pages/_demo/deb/concept/start
	ar x 'numix-gtk-theme_2.6.7-5_all.deb'

	mkdir -p 'numix-gtk-theme'

	tar -p -C 'numix-gtk-theme' -xf 'data.tar.xz'

	## install
	theme_asset_install_gtk_theme_numix_to_local


	## back
	cd ../..
}

theme_asset_install_gtk_theme_numix_to_local () {
	if [ -a "$HOME/.themes/Numix" ]; then ## file is exists
		echo "File Exists: $HOME/.themes/Numix"
		return 0
	fi

	mkdir -p "$HOME/.themes"

	cp -a 'numix-gtk-theme/usr/share/themes/Numix' "$HOME/.themes/Numix"
	##cp -a 'numix-gtk-theme/usr/share/themes/Numix' "$HOME/.local/share/themes/Numix"
}

theme_asset_install_icon_theme_numix_circle () {

	## create dir
	mkdir -p 'asset/numix-icon-theme-circle'

	cd 'asset/numix-icon-theme-circle'

	## download

	wget -c 'http://tw.archive.ubuntu.com/ubuntu/pool/universe/n/numix-icon-theme-circle/numix-icon-theme-circle_19.12.27-1_all.deb'

	## extract
	## https://github.com/samwhelp/note-about-deb/tree/gh-pages/_demo/deb/concept/start
	ar x 'numix-icon-theme-circle_19.12.27-1_all.deb'

	mkdir -p 'numix-icon-theme-circle'

	tar -p -C 'numix-icon-theme-circle' -xf 'data.tar.xz'


	## install
	theme_asset_install_icon_theme_numix_circle_to_local
	theme_asset_install_icon_theme_numix_circle_light_to_local


	## back
	cd ../..
}


theme_asset_install_icon_theme_numix_circle_to_local () {
	if [ -a "$HOME/.icons/Numix-Circle" ]; then ## file is exists
		echo "File Exists: $HOME/.icons/Numix-Circle"
		return 0
	fi

	mkdir -p "$HOME/.icons"

	cp -a 'numix-icon-theme-circle/usr/share/icons/Numix-Circle' "$HOME/.icons/Numix-Circle"
	##cp -a 'numix-icon-theme-circle/usr/share/icons/Numix-Circle' "$HOME/.local/share/icons/Numix-Circle"
}


theme_asset_install_icon_theme_numix_circle_light_to_local () {
	if [ -a "$HOME/.icons/Numix-Circle-Ligh" ]; then ## file is exists
		echo "File Exists: $HOME/.icons/Numix-Circle-Light"
		return 0
	fi

	mkdir -p "$HOME/.icons"

	cp -a 'numix-icon-theme-circle/usr/share/icons/Numix-Circle-Light' "$HOME/.icons/Numix-Circle-Light"
	##cp -a 'numix-icon-theme-circle/usr/share/icons/Numix-Circle-Light' "$HOME/.local/share/icons/Numix-Circle-Light"
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
