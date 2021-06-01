#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_gtk_theme_shades_of_gray
	theme_asset_install_icon_theme_nord_black_frost_suru

}

theme_asset_install_gtk_theme_shades_of_gray () {

	theme_asset_install_gtk_theme_shades_of_gray_clone

	theme_asset_install_gtk_theme_shades_of_gray_to_local

	echo

	file "$HOME/.themes/Shades-of-gray"
	ls -l "$HOME/.themes/Shades-of-gray"

	echo

}

theme_asset_install_gtk_theme_shades_of_gray_clone () {

	if [ -a 'asset/WernerFP_Shades-of-gray-theme' ]; then ## file is exists
		echo "File Exists: asset/WernerFP_Shades-of-gray-theme"
		return 0
	fi

	## https://www.gnome-look.org/p/1244058/
	## https://github.com/WernerFP/Shades-of-gray-theme

	echo "git clone 'https://github.com/WernerFP/Shades-of-gray-theme.git' 'asset/WernerFP_Shades-of-gray-theme'"
	git clone 'https://github.com/WernerFP/Shades-of-gray-theme.git' 'asset/WernerFP_Shades-of-gray-theme'

}

theme_asset_install_gtk_theme_shades_of_gray_to_local () {
	if [ -a "$HOME/.themes/Shades-of-gray" ]; then ## file is exists
		echo "File Exists: $HOME/.themes/Shades-of-gray"
		return 0
	fi

	mkdir -p "$HOME/.themes"

	cp -a 'asset/WernerFP_Shades-of-gray-theme/Shades-of-gray' "$HOME/.themes/Shades-of-gray"
	##cp -a 'asset/WernerFP_Shades-of-gray-theme/Shades-of-gray' "$HOME/.local/share/themes/Shades-of-gray"
}




theme_asset_install_icon_theme_nord_black_frost_suru () {

	theme_asset_install_icon_theme_nord_black_frost_suru_clone

	theme_asset_install_icon_theme_nord_black_frost_suru_to_local

	echo

	file "$HOME/.icons/Black-Frost-Suru"
	ls -l "$HOME/.icons/Black-Frost-Suru"

	echo

}

theme_asset_install_icon_theme_nord_black_frost_suru_clone () {

	if [ -a 'asset/rtl88-Themes_Nord-Black-Frost' ]; then ## file is exists
		echo "File Exists: asset/rtl88-Themes_Nord-Black-Frost"
		return 0
	fi

	## https://www.gnome-look.org/search/projectSearchText/Nord-Black-Frost-Suru
	## https://www.gnome-look.org/p/1333828/
	## https://github.com/rtlewis88/rtl88-Themes/tree/Nord-Black-Frost/Nord-Black-Frost-Suru

	echo "git clone -b 'Nord-Black-Frost' 'https://github.com/rtlewis88/rtl88-Themes.git' 'asset/rtl88-Themes_Nord-Black-Frost'"
	git clone -b 'Nord-Black-Frost' 'https://github.com/rtlewis88/rtl88-Themes.git' 'asset/rtl88-Themes_Nord-Black-Frost'


}

theme_asset_install_icon_theme_nord_black_frost_suru_to_local () {
	if [ -a "$HOME/.icons/Black-Frost-Suru" ]; then ## file is exists
		echo "File Exists: $HOME/.icons/Black-Frost-Suru"
		return 0
	fi

	mkdir -p "$HOME/.icons"

	cp -a 'asset/rtl88-Themes_Nord-Black-Frost/Black-Frost-Suru' "$HOME/.icons/Black-Frost-Suru"
	##cp -a 'asset/rtl88-Themes_Nord-Black-Frost/Black-Frost-Suru' "$HOME/.local/share/icons/Black-Frost-Suru"

	echo
	echo "gtk-update-icon-cache $HOME/.icons/Black-Frost-Suru"
	gtk-update-icon-cache "$HOME/.icons/Black-Frost-Suru"

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
