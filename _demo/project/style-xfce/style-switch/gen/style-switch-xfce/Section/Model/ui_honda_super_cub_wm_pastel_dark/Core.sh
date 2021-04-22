

################################################################################
### Head: Model ui_honda_super_cub_wm_pastel_dark
##

ui_honda_super_cub_wm_pastel_dark_config_wm_theme () {

	sys_xfce_set_wm_theme 'Pastel_Dark'

}

ui_honda_super_cub_wm_pastel_dark_config_ui_theme () {

	sys_xfce_set_ui_theme 'Honda-Super-Cub'

}

ui_honda_super_cub_wm_pastel_dark_config_icon_theme () {

	sys_xfce_set_icon_theme 'Papirus-Dark'

}

ui_honda_super_cub_wm_pastel_dark_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

ui_honda_super_cub_wm_pastel_dark () {
	#echo "ui_honda_super_cub_wm_pastel_dark"
	#echo "$@"


	ui_honda_super_cub_wm_pastel_dark_config_wm_theme
	ui_honda_super_cub_wm_pastel_dark_config_ui_theme
	ui_honda_super_cub_wm_pastel_dark_config_icon_theme
	ui_honda_super_cub_wm_pastel_dark_config_cursor_theme

}

##
### Tail: Model ui_honda_super_cub_wm_pastel_dark
################################################################################
