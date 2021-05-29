

################################################################################
### Head: Model ui_theme
##

sc_ui_theme_usage () {

	local cmd_name="$THE_CMD_FILE_NAME"

cat << EOF

Usage:
	$ $cmd_name ui_theme [name]


Example:
	$ $cmd_name ui_theme

	$ $cmd_name ui_theme 'Matcha-aliz'
	$ $cmd_name ui_theme 'Matcha-azul'
	$ $cmd_name ui_theme 'Matcha-sea'

	$ $cmd_name ui_theme 'Matcha-dark-aliz'
	$ $cmd_name ui_theme 'Matcha-dark-azul'
	$ $cmd_name ui_theme 'Matcha-dark-sea'

	$ $cmd_name ui_theme 'Matcha-light-aliz'
	$ $cmd_name ui_theme 'Matcha-light-azul'
	$ $cmd_name ui_theme 'Matcha-light-sea'

	$ $cmd_name ui_theme 'NumixBlue'

EOF

}

# sc_ui_theme () {
#
# 	local ui_theme="$1"
#
# 	if [ "none${ui_theme}" = "none" ]; then
# 		echo
# 		echo "## Need {name}"
# 		sc_ui_theme_usage
# 		return
# 	fi
#
# 	sys_xfce_set_ui_theme "$ui_theme"
#
# }

sc_ui_theme () {

	local ui_theme="$1"

	if [ "none${ui_theme}" = "none" ]; then
		sys_xfce_get_ui_theme
		return
	fi

	sys_xfce_set_ui_theme "$ui_theme"

}

##
### Tail: Model ui_theme
################################################################################
