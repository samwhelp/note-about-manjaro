

################################################################################
### Head: Model wm_rgaps_blend_nobuttons_ui_shades_of_gray
##

##
## wm_theme: RGapsBlendNoButtons
## ui_theme: Gruvbox
## icon_theme: Gruvbox-Dark
## cursor_theme: xcursor-breeze 24
##

wm_rgaps_blend_nobuttons_ui_shades_of_gray_config_wm_theme () {

	sys_xfce_set_wm_theme 'RGapsBlendNoButtons'

}

wm_rgaps_blend_nobuttons_ui_shades_of_gray_config_ui_theme () {

	sys_xfce_set_ui_theme 'Shades-of-gray'

}

wm_rgaps_blend_nobuttons_ui_shades_of_gray_config_icon_theme () {

	sys_xfce_set_icon_theme 'Black-Frost-Suru'

}

wm_rgaps_blend_nobuttons_ui_shades_of_gray_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

wm_rgaps_blend_nobuttons_ui_shades_of_gray () {
	#echo "wm_rgaps_blend_nobuttons_ui_shades_of_gray"
	#echo "$@"


	wm_rgaps_blend_nobuttons_ui_shades_of_gray_config_wm_theme
	wm_rgaps_blend_nobuttons_ui_shades_of_gray_config_ui_theme
	wm_rgaps_blend_nobuttons_ui_shades_of_gray_config_icon_theme
	wm_rgaps_blend_nobuttons_ui_shades_of_gray_config_cursor_theme

}

##
### Tail: Model wm_rgaps_blend_nobuttons_ui_shades_of_gray
################################################################################
