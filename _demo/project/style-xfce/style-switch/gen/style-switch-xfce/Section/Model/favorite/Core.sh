

################################################################################
### Head: Model favorite
##

favorite_config_wm_theme () {

	sys_xfce_set_wm_theme 'RGapsBlendNoButtons'

}

favorite_config_ui_theme () {

	sys_xfce_set_ui_theme 'Matcha-dark-aliz'

}

favorite_config_icon_theme () {

	sys_xfce_set_icon_theme 'Papirus-Dark'

}

favorite_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

favorite () {
	#echo "favorite"
	#echo "$@"


	favorite_config_wm_theme
	favorite_config_ui_theme
	favorite_config_icon_theme
	favorite_config_cursor_theme

}

##
### Tail: Model favorite
################################################################################
