#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_config_install () {

	theme_config_install_wm_theme
	theme_config_install_ui_theme
	theme_config_install_icon_theme
	theme_config_install_cursor_theme

}

theme_config_install_wm_theme () {

	xfconf-query -c 'xfwm4' -p '/general/theme' -s 'Obsidian-2-Gray'
	echo "xfconf-query -c 'xfwm4' -p '/general/theme' -s 'Obsidian-2-Gray'"


	##
	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
	##
	## $ grep \"theme\" ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
	## <property name="theme" type="string" value="Obsidian-2-Gray"/>
	##

}

theme_config_install_ui_theme () {

	echo "xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Obsidian-2-Gray'"
	xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Obsidian-2-Gray'


	##
	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	##
	## $ grep \"ThemeName\" ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="ThemeName" type="string" value="Obsidian-2-Gray"/>
	##

}

theme_config_install_icon_theme () {

	echo "xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Black-Frost-Suru'"
	xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Black-Frost-Suru'


	##
	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	##
	## $ grep \"IconThemeName\" ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="IconThemeName" type="string" value="Black-Frost-Suru"/>
	##

}

theme_config_install_cursor_theme () {

	echo "xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName' -s 'xcursor-breeze'"
	xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName' -s "xcursor-breeze"

	echo "xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize' -s '24'"
	xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize' -s "24"


	##
	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	##
	##
	## $ grep \"CursorThemeName\" ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="CursorThemeName" type="string" value="xcursor-breeze"/>
	##
	##
	## $ grep \"CursorThemeSize\" ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="CursorThemeSize" type="int" value="24"/>
	##

}

##
### Tail: theme
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	theme_config_install


}
## start
main_config_install

##
### Tail: main
################################################################################
