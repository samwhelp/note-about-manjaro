

################################################################################
### Head: Model theme_gruvbox_material_dark
##

theme_gruvbox_material_dark_config_wm_theme () {

	sys_xfce_set_wm_theme 'Gruvbox-Material-Dark'

}

theme_gruvbox_material_dark_config_ui_theme () {

	sys_xfce_set_ui_theme 'Gruvbox-Material-Dark'

}

theme_gruvbox_material_dark_config_icon_theme () {

	sys_xfce_set_icon_theme 'Gruvbox-Material-Dark'

}

theme_gruvbox_material_dark_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

theme_gruvbox_material_dark () {
	#echo "theme_gruvbox_material_dark"
	#echo "$@"


	theme_gruvbox_material_dark_config_wm_theme
	theme_gruvbox_material_dark_config_ui_theme
	theme_gruvbox_material_dark_config_icon_theme
	theme_gruvbox_material_dark_config_cursor_theme

}

##
### Tail: Model theme_gruvbox_material_dark
################################################################################
