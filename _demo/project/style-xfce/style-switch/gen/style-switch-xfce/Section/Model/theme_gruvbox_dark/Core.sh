

################################################################################
### Head: Model theme_gruvbox_dark
##

theme_gruvbox_dark_config_wm_theme () {

	sys_xfce_set_wm_theme 'gruvbox-dark-gtk'

}

theme_gruvbox_dark_config_ui_theme () {

	sys_xfce_set_ui_theme 'gruvbox-dark-gtk'

}

theme_gruvbox_dark_config_icon_theme () {

	sys_xfce_set_icon_theme 'gruvbox-dark-icons-gtk'

}

theme_gruvbox_dark_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

theme_gruvbox_dark () {
	#echo "theme_gruvbox_dark"
	#echo "$@"


	theme_gruvbox_dark_config_wm_theme
	theme_gruvbox_dark_config_ui_theme
	theme_gruvbox_dark_config_icon_theme
	theme_gruvbox_dark_config_cursor_theme

}

##
### Tail: Model theme_gruvbox_dark
################################################################################
