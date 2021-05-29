

################################################################################
### Head: Model theme_matcha_dark_azul
##

theme_matcha_dark_azul_config_wm_theme () {

	sys_xfce_set_wm_theme 'Matcha-dark-azul'

}

theme_matcha_dark_azul_config_ui_theme () {

	sys_xfce_set_ui_theme 'Matcha-dark-azul'

}

theme_matcha_dark_azul_config_icon_theme () {

	sys_xfce_set_icon_theme 'Papirus-Dark'

}

theme_matcha_dark_azul_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

theme_matcha_dark_azul () {
	#echo "theme_matcha_dark_azul"
	#echo "$@"


	theme_matcha_dark_azul_config_wm_theme
	theme_matcha_dark_azul_config_ui_theme
	theme_matcha_dark_azul_config_icon_theme
	theme_matcha_dark_azul_config_cursor_theme

}

##
### Tail: Model theme_matcha_dark_azul
################################################################################
