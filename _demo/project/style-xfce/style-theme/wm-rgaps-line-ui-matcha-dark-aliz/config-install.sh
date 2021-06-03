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

	xfconf-query -c 'xfwm4' -p '/general/theme' -s 'RGapsLine'
	echo "xfconf-query -c 'xfwm4' -p '/general/theme' -s 'RGapsLine'"


	##
	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
	##
	## $ grep \"theme\" ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
	## <property name="theme" type="string" value="RGapsLine"/>
	##

}

theme_config_install_ui_theme () {

	echo "xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Matcha-dark-aliz'"
	xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Matcha-dark-aliz'


	##
	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	##
	## $ grep \"ThemeName\" ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="ThemeName" type="string" value="Matcha-dark-aliz"/>
	##

}

theme_config_install_icon_theme () {

	echo "xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Papirus-Dark'"
	xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Papirus-Dark'


	##
	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	##
	## $ grep \"IconThemeName\" ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="IconThemeName" type="string" value="Papirus-Dark"/>
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
