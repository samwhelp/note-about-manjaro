

################################################################################
### Head: Model wm_rgaps_blend_nobuttons_ui_gruvbox
##

##
## wm_theme: RGapsBlendNoButtons
## ui_theme: Gruvbox
## icon_theme: Gruvbox-Dark
## cursor_theme: xcursor-breeze 24
##

wm_rgaps_blend_nobuttons_ui_gruvbox_config_wm_theme () {

	sys_xfce_set_wm_theme 'RGapsBlendNoButtons'

}

wm_rgaps_blend_nobuttons_ui_gruvbox_config_ui_theme () {

	sys_xfce_set_ui_theme 'Gruvbox'

}

wm_rgaps_blend_nobuttons_ui_gruvbox_config_icon_theme () {

	sys_xfce_set_icon_theme 'Gruvbox-Dark'

}

wm_rgaps_blend_nobuttons_ui_gruvbox_config_cursor_theme () {

	sys_xfce_set_cursor_theme_default

}

wm_rgaps_blend_nobuttons_ui_gruvbox () {
	#echo "wm_rgaps_blend_nobuttons_ui_gruvbox"
	#echo "$@"


	wm_rgaps_blend_nobuttons_ui_gruvbox_config_wm_theme
	wm_rgaps_blend_nobuttons_ui_gruvbox_config_ui_theme
	wm_rgaps_blend_nobuttons_ui_gruvbox_config_icon_theme
	wm_rgaps_blend_nobuttons_ui_gruvbox_config_cursor_theme

}

##
### Tail: Model wm_rgaps_blend_nobuttons_ui_gruvbox
################################################################################
