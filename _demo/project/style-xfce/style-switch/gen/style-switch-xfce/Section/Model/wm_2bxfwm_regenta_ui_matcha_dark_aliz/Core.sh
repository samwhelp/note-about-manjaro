

################################################################################
### Head: Model wm_2bxfwm_regenta_ui_matcha_dark_aliz
##

wm_2bxfwm_regenta_ui_matcha_dark_aliz_config_wm_theme () {

	sys_xfce_set_wm_theme '2bxfwm-Regenta'

}

wm_2bxfwm_regenta_ui_matcha_dark_aliz_config_ui_theme () {

	sys_xfce_set_ui_theme 'Matcha-dark-aliz'

}

wm_2bxfwm_regenta_ui_matcha_dark_aliz_config_icon_theme () {

	sys_xfce_set_icon_theme 'Papirus-Dark'

}

wm_2bxfwm_regenta_ui_matcha_dark_aliz_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

wm_2bxfwm_regenta_ui_matcha_dark_aliz () {
	#echo "wm_2bxfwm_regenta_ui_matcha_dark_aliz"
	#echo "$@"


	wm_2bxfwm_regenta_ui_matcha_dark_aliz_config_wm_theme
	wm_2bxfwm_regenta_ui_matcha_dark_aliz_config_ui_theme
	wm_2bxfwm_regenta_ui_matcha_dark_aliz_config_icon_theme
	wm_2bxfwm_regenta_ui_matcha_dark_aliz_config_cursor_theme

}

##
### Tail: Model wm_2bxfwm_regenta_ui_matcha_dark_aliz
################################################################################
