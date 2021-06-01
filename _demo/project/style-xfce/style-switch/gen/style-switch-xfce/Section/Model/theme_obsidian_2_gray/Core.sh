

################################################################################
### Head: Model theme_obsidian_2_gray
##

theme_obsidian_2_gray_config_wm_theme () {

	sys_xfce_set_wm_theme 'Obsidian-2-Gray'

}

theme_obsidian_2_gray_config_ui_theme () {

	sys_xfce_set_ui_theme 'Obsidian-2-Gray'

}

theme_obsidian_2_gray_config_icon_theme () {

	sys_xfce_set_icon_theme 'Black-Frost-Suru'

}

theme_obsidian_2_gray_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

theme_obsidian_2_gray () {
	#echo "theme_obsidian_2_gray"
	#echo "$@"


	theme_obsidian_2_gray_config_wm_theme
	theme_obsidian_2_gray_config_ui_theme
	theme_obsidian_2_gray_config_icon_theme
	theme_obsidian_2_gray_config_cursor_theme

}

##
### Tail: Model theme_obsidian_2_gray
################################################################################
