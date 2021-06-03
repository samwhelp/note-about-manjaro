

################################################################################
### Head: Model wm_chandelier_ui_matcha_dark_aliz
##

wm_chandelier_ui_matcha_dark_aliz_config_wm_theme () {

	sys_xfce_set_wm_theme 'Chandelier'

}

wm_chandelier_ui_matcha_dark_aliz_config_ui_theme () {

	sys_xfce_set_ui_theme 'Matcha-dark-aliz'

}

wm_chandelier_ui_matcha_dark_aliz_config_icon_theme () {

	sys_xfce_set_icon_theme 'Papirus-Dark'

}

wm_chandelier_ui_matcha_dark_aliz_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

wm_chandelier_ui_matcha_dark_aliz () {
	#echo "wm_chandelier_ui_matcha_dark_aliz"
	#echo "$@"


	wm_chandelier_ui_matcha_dark_aliz_config_wm_theme
	wm_chandelier_ui_matcha_dark_aliz_config_ui_theme
	wm_chandelier_ui_matcha_dark_aliz_config_icon_theme
	wm_chandelier_ui_matcha_dark_aliz_config_cursor_theme

}

##
### Tail: Model wm_chandelier_ui_matcha_dark_aliz
################################################################################
