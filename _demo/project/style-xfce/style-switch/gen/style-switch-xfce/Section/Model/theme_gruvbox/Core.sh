

################################################################################
### Head: Model theme_gruvbox
##

##
## wm_theme: Gruvbox
## ui_theme: Gruvbox
## icon_theme: Gruvbox-Dark
## cursor_theme: xcursor-breeze 24
##

theme_gruvbox_config_wm_theme () {

	sys_xfce_set_wm_theme 'Gruvbox'

}

theme_gruvbox_config_ui_theme () {

	sys_xfce_set_ui_theme 'Gruvbox'

}

theme_gruvbox_config_icon_theme () {

	sys_xfce_set_icon_theme 'Gruvbox-Dark'

}

theme_gruvbox_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

theme_gruvbox () {
	#echo "theme_gruvbox"
	#echo "$@"


	theme_gruvbox_config_wm_theme
	theme_gruvbox_config_ui_theme
	theme_gruvbox_config_icon_theme
	theme_gruvbox_config_cursor_theme

}

##
### Tail: Model theme_gruvbox
################################################################################
