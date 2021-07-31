

################################################################################
### Head: Model fzf
##

mod_fzf () {
	#echo "mod_fzf"
	#echo "$@"

if ! is_command_exist 'fzf'; then

cat << EOF

## Need: fzf

	* https://github.com/junegunn/fzf

	$ pamac install fzf

EOF
	return 1
fi


	#https://en.wikipedia.org/wiki/Here_document
local selected="$(fzf << EOF
default
favorite
theme_matcha_dark_aliz
theme_matcha_dark_azul
theme_matcha_dark_sea
theme_dracula
theme_gruvbox
theme_gruvbox_dark
theme_gruvbox_material_dark
theme_klaus
theme_nordic
theme_numix
theme_numix_blue
theme_obsidian_2_gray
theme_shades_of_gray
wm_2bxfwm_regenta_ui_matcha_dark_aliz
wm_chandelier_ui_honda_super_cub
wm_chandelier_ui_matcha_dark_aliz
wm_pastel_dark_ui_honda_super_cub
wm_pastel_dark_ui_matcha_dark_aliz
wm_rgaps_blend_nobuttons_ui_matcha_dark_aliz
wm_rgaps_blend_nobuttons_ui_gruvbox
wm_rgaps_blend_ui_matcha_dark_aliz
wm_rgaps_line_nobuttons_ui_matcha_dark_aliz
wm_rgaps_line_ui_honda_super_cub
wm_rgaps_line_ui_matcha_dark_aliz
EOF
)"


echo
echo "## Selected: $selected"
echo

main_run_sub_cmd "$selected"


}

##
### Tail: Model fzf
################################################################################
