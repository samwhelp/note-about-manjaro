

################################################################################
### Head: Model theme_dracula
##

theme_dracula_config_wm_theme () {

	sys_xfce_set_wm_theme 'Dracula'

}

theme_dracula_config_ui_theme () {

	sys_xfce_set_ui_theme 'Dracula'

}

theme_dracula_config_icon_theme () {

	sys_xfce_set_icon_theme 'Dracula'

}

theme_dracula_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

theme_dracula () {
	#echo "theme_dracula"
	#echo "$@"


	theme_dracula_config_wm_theme
	theme_dracula_config_ui_theme
	theme_dracula_config_icon_theme
	theme_dracula_config_cursor_theme

}

##
### Tail: Model theme_dracula
################################################################################
