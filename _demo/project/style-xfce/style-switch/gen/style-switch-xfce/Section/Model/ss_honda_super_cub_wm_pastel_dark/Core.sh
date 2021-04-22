

################################################################################
### Head: Model ss_honda_super_cub_wm_pastel_dark
##

ss_honda_super_cub_wm_pastel_dark_config_wm_theme () {

	sys_xfce_set_wm_theme 'Pastel_Dark'

}

ss_honda_super_cub_wm_pastel_dark_config_ui_theme () {

	sys_xfce_set_ui_theme 'Honda-Super-Cub'

}

ss_honda_super_cub_wm_pastel_dark_config_icon_theme () {

	sys_xfce_set_icon_theme 'Papirus-Dark'

}

ss_honda_super_cub_wm_pastel_dark_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

ss_honda_super_cub_wm_pastel_dark () {
	#echo "ss_honda_super_cub_wm_pastel_dark"
	#echo "$@"


	ss_honda_super_cub_wm_pastel_dark_config_wm_theme
	ss_honda_super_cub_wm_pastel_dark_config_ui_theme
	ss_honda_super_cub_wm_pastel_dark_config_icon_theme
	ss_honda_super_cub_wm_pastel_dark_config_cursor_theme

}

##
### Tail: Model ss_honda_super_cub_wm_pastel_dark
################################################################################
