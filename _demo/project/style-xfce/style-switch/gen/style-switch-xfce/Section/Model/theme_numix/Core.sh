

################################################################################
### Head: Model theme_numix
##

theme_numix_config_wm_theme () {

	sys_xfce_set_wm_theme 'Numix'

}

theme_numix_config_ui_theme () {

	sys_xfce_set_ui_theme 'Numix'

}

theme_numix_config_icon_theme () {

	sys_xfce_set_icon_theme 'Numix-Circle'

}

theme_numix_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

theme_numix () {
	#echo "theme_numix"
	#echo "$@"


	theme_numix_config_wm_theme
	theme_numix_config_ui_theme
	theme_numix_config_icon_theme
	theme_numix_config_cursor_theme

}

##
### Tail: Model theme_numix
################################################################################
