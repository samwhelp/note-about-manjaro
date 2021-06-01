#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_gtk_theme_obsidian_2_gray
	theme_asset_install_icon_theme_nord_black_frost_suru

}

theme_asset_install_gtk_theme_obsidian_2_gray () {

	theme_asset_install_gtk_theme_obsidian_2_gray_download

	theme_asset_install_gtk_theme_obsidian_2_gray_to_local

	echo

	file "$HOME/.themes/Obsidian-2-Gray"
	ls -l "$HOME/.themes/Obsidian-2-Gray"

	echo

}

theme_asset_install_gtk_theme_obsidian_2_gray_download () {

	if [ -a 'asset/theme-obsidian-2-gray/Obsidian-2-Gray' ]; then ## file is exists
		echo "File Exists: asset/theme-obsidian-2-gray/Obsidian-2-Gray"
		return 0
	fi

	## https://www.gnome-look.org/p/1173113/
	## https://github.com/madmaxms/theme-obsidian-2/archive/gray.tar.gz

	## wget --user-agent="User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:32.0) Gecko/20100101 Firefox/32.0"

	wget -q -c 'https://github.com/madmaxms/theme-obsidian-2/archive/gray.tar.gz' -O 'asset/theme-obsidian-2-gray.tar.gz'
	echo "wget -q -c 'https://github.com/madmaxms/theme-obsidian-2/archive/gray.tar.gz' -O 'asset/theme-obsidian-2-gray.tar.gz'"

	cd 'asset'

	tar xf 'theme-obsidian-2-gray.tar.gz'

	cd ..
}

theme_asset_install_gtk_theme_obsidian_2_gray_to_local () {
	if [ -a "$HOME/.themes/Obsidian-2-Gray" ]; then ## file is exists
		echo "File Exists: $HOME/.themes/Obsidian-2-Gray"
		return 0
	fi

	mkdir -p "$HOME/.themes"

	cp -a 'asset/theme-obsidian-2-gray/Obsidian-2-Gray' "$HOME/.themes/Obsidian-2-Gray"
	##cp -a 'asset/theme-obsidian-2-gray/Obsidian-2-Gray' "$HOME/.local/share/themes/Obsidian-2-Gray"
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
