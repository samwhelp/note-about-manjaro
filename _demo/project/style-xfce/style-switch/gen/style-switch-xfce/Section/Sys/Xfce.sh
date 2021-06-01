

################################################################################
### Head: Sys
##

sys_xfce_set_wm_theme () {

	local wm_theme="$1"

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
	## <property name="theme" type="string" value="Numix"/>

	xfconf-query -c 'xfwm4' -p '/general/theme' -s "$wm_theme"
	echo "xfconf-query -c 'xfwm4' -p '/general/theme' -s '$wm_theme'"

}

sys_xfce_get_wm_theme () {

	xfconf-query -c 'xfwm4' -p '/general/theme'

}

sys_xfce_set_ui_theme () {

	local ui_theme="$1"

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="ThemeName" type="string" value="Numix"/>

	xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s "$ui_theme"
	echo "xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s '$ui_theme'"

}

sys_xfce_get_ui_theme () {

	xfconf-query -c 'xsettings' -p '/Net/ThemeName'

}

sys_xfce_set_icon_theme () {

	local icon_theme="$1"

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="IconThemeName" type="string" value="Numix"/>

	xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s "$icon_theme"
	echo "xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s '$icon_theme'"

}

sys_xfce_get_icon_theme () {

	xfconf-query -c 'xsettings' -p '/Net/IconThemeName'

}

sys_xfce_set_cursor_theme () {

	local cursor_theme_name="$1"
	local cursor_theme_size="$2"

	if [ "none${cursor_theme_name}" = "none" ]; then
		cursor_theme_name="default"
	fi

	if [ "none${cursor_theme_size}" = "none" ]; then
		cursor_theme_size="24"
	fi

	#echo $cursor_theme_name
	#echo $cursor_theme_size
	#return


	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml

	## <property name="CursorThemeName" type="string" value="default"/>
	## <property name="CursorThemeSize" type="int" value="24"/>

	## <property name="CursorThemeName" type="string" value="breeze_cursors"/>
	## <property name="CursorThemeSize" type="int" value="24"/>

	## <property name="CursorThemeName" type="string" value="xcursor-breeze"/>
	## <property name="CursorThemeSize" type="int" value="24"/>


	echo "xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName' -s '$cursor_theme_name'"
	xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName' -s "$cursor_theme_name"

	echo "xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize' -s '$cursor_theme_size'"
	xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize' -s "$cursor_theme_size"


}

sys_xfce_get_cursor_theme () {
	local name=$(xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName')

	local size=$(xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize')

	echo "${name} ${size}"
}

sys_xfce_get_all () {

	local wm_theme=$(sys_xfce_get_wm_theme)
	local ui_theme=$(sys_xfce_get_ui_theme)
	local icon_theme=$(sys_xfce_get_icon_theme)
	local cursor_theme=$(sys_xfce_get_cursor_theme)

	echo "wm_theme: ${wm_theme}"
	echo "ui_theme: ${ui_theme}"
	echo "icon_theme: ${icon_theme}"
	echo "cursor_theme: ${cursor_theme}"

}


sys_xfce_get_all_default () {

	local wm_theme=$(sys_xfce_get_wm_theme_default)
	local ui_theme=$(sys_xfce_get_ui_theme_default)
	local icon_theme=$(sys_xfce_get_icon_theme_default)
	local cursor_theme=$(sys_xfce_get_cursor_theme_default)
	local cursor_theme_for_dark=$(sys_xfce_get_cursor_theme_default_for_dark)
	local cursor_theme_for_light=$(sys_xfce_get_cursor_theme_default_for_light)

	echo "wm_theme: ${wm_theme}"
	echo "ui_theme: ${ui_theme}"
	echo "icon_theme: ${icon_theme}"
	echo "cursor_theme: ${cursor_theme}"
	echo "cursor_theme_for_dark: ${cursor_theme_for_dark}"
	echo "cursor_theme_for_light: ${cursor_theme_for_light}"

}

sys_xfce_set_all_default () {

	sys_xfce_set_wm_theme_default
	sys_xfce_set_ui_theme_default
	sys_xfce_set_icon_theme_default
	sys_xfce_set_cursor_theme_default

}

sys_xfce_get_wm_theme_default () {

	echo 'Matcha-sea'
}

sys_xfce_set_wm_theme_default () {

	sys_xfce_set_wm_theme $(sys_xfce_get_wm_theme_default)

}

sys_xfce_get_ui_theme_default () {

	echo 'Matcha-sea'

}

sys_xfce_set_ui_theme_default () {

	sys_xfce_set_ui_theme $(sys_xfce_get_ui_theme_default)

}

sys_xfce_get_icon_theme_default () {

	echo 'Papirus-Maia'

}

sys_xfce_set_icon_theme_default () {

	sys_xfce_set_icon_theme $(sys_xfce_get_icon_theme_default)

}

sys_xfce_get_cursor_theme_default () {

	echo 'xcursor-breeze' 24

}

sys_xfce_set_cursor_theme_default () {

	sys_xfce_set_cursor_theme $(sys_xfce_get_cursor_theme_default)

}

sys_xfce_get_cursor_theme_default_for_dark () {

	echo 'xcursor-breeze' 24

}

sys_xfce_set_cursor_theme_default_for_dark () {

	sys_xfce_set_cursor_theme $(sys_xfce_get_cursor_theme_default_for_dark)
}

sys_xfce_get_cursor_theme_default_for_light () {

	echo 'xcursor-breeze-snow' 24

}

sys_xfce_set_cursor_theme_default_for_light () {

	sys_xfce_set_cursor_theme $(sys_xfce_get_cursor_theme_default_for_light)

}

##
### Tail: Sys
################################################################################
