

################################################################################
### Head: Model theme_shades_of_gray
##

theme_shades_of_gray_config_wm_theme () {

	sys_xfce_set_wm_theme 'Shades-of-gray'

}

theme_shades_of_gray_config_ui_theme () {

	sys_xfce_set_ui_theme 'Shades-of-gray'

}

theme_shades_of_gray_config_icon_theme () {

	sys_xfce_set_icon_theme 'Black-Frost-Suru'

}

theme_shades_of_gray_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

theme_shades_of_gray () {
	#echo "theme_shades_of_gray"
	#echo "$@"


	theme_shades_of_gray_config_wm_theme
	theme_shades_of_gray_config_ui_theme
	theme_shades_of_gray_config_icon_theme
	theme_shades_of_gray_config_cursor_theme

}

##
### Tail: Model theme_shades_of_gray
################################################################################
