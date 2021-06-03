

################################################################################
### Head: Model wm_pastel_dark_ui_honda_super_cub
##

wm_pastel_dark_ui_honda_super_cub_config_wm_theme () {

	sys_xfce_set_wm_theme 'Pastel_Dark'

}

wm_pastel_dark_ui_honda_super_cub_config_ui_theme () {

	sys_xfce_set_ui_theme 'Honda-Super-Cub'

}

wm_pastel_dark_ui_honda_super_cub_config_icon_theme () {

	sys_xfce_set_icon_theme 'Papirus-Dark'

}

wm_pastel_dark_ui_honda_super_cub_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

wm_pastel_dark_ui_honda_super_cub () {
	#echo "wm_pastel_dark_ui_honda_super_cub"
	#echo "$@"


	wm_pastel_dark_ui_honda_super_cub_config_wm_theme
	wm_pastel_dark_ui_honda_super_cub_config_ui_theme
	wm_pastel_dark_ui_honda_super_cub_config_icon_theme
	wm_pastel_dark_ui_honda_super_cub_config_cursor_theme

}

##
### Tail: Model wm_pastel_dark_ui_honda_super_cub
################################################################################
