

################################################################################
### Head: Model wm_theme
##

sc_wm_theme_usage () {

	local cmd_name="$THE_CMD_FILE_NAME"

cat << EOF

Usage:
	$ $cmd_name wm_theme [name]


Example:
	$ $cmd_name wm_theme

	$ $cmd_name wm_theme 'Matcha-aliz'
	$ $cmd_name wm_theme 'Matcha-azul'
	$ $cmd_name wm_theme 'Matcha-sea'

	$ $cmd_name wm_theme 'Matcha-dark-aliz'
	$ $cmd_name wm_theme 'Matcha-dark-azul'
	$ $cmd_name wm_theme 'Matcha-dark-sea'

	$ $cmd_name wm_theme 'Matcha-light-aliz'
	$ $cmd_name wm_theme 'Matcha-light-azul'
	$ $cmd_name wm_theme 'Matcha-light-sea'

	$ $cmd_name wm_theme 'NumixBlue'

EOF

}

# sc_wm_theme () {
#
# 	local wm_theme="$1"
#
# 	if [ "none${wm_theme}" = "none" ]; then
# 		echo
# 		echo "## Need {name}"
# 		sc_wm_theme_usage
# 		return
# 	fi
#
# 	sys_xfce_set_wm_theme "$wm_theme"
#
# }

sc_wm_theme () {

	local wm_theme="$1"

	if [ "none${wm_theme}" = "none" ]; then
		sys_xfce_get_wm_theme
		return
	fi

	sys_xfce_set_wm_theme "$wm_theme"

}

##
### Tail: Model wm_theme
################################################################################
