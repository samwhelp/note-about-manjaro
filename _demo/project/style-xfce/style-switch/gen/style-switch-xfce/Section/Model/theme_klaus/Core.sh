

################################################################################
### Head: Model theme_klaus
##

theme_klaus_config_wm_theme () {

	sys_xfce_set_wm_theme 'Klaus'

}

theme_klaus_config_ui_theme () {

	sys_xfce_set_ui_theme 'Klaus'

}

theme_klaus_config_icon_theme () {

	sys_xfce_set_icon_theme 'Papirus-Dark'

}

theme_klaus_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

theme_klaus () {
	#echo "theme_klaus"
	#echo "$@"


	theme_klaus_config_wm_theme
	theme_klaus_config_ui_theme
	theme_klaus_config_icon_theme
	theme_klaus_config_cursor_theme

}

##
### Tail: Model theme_klaus
################################################################################
