

################################################################################
### Head: Model theme_nordic
##

theme_nordic_config_wm_theme () {

	sys_xfce_set_wm_theme 'Nordic'

}

theme_nordic_config_ui_theme () {

	sys_xfce_set_ui_theme 'Nordic'

}

theme_nordic_config_icon_theme () {

	sys_xfce_set_icon_theme 'Papirus-Dark'

}

theme_nordic_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

theme_nordic () {
	#echo "theme_nordic"
	#echo "$@"


	theme_nordic_config_wm_theme
	theme_nordic_config_ui_theme
	theme_nordic_config_icon_theme
	theme_nordic_config_cursor_theme

}

##
### Tail: Model theme_nordic
################################################################################
