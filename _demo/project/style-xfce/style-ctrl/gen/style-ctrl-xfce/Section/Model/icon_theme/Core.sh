

################################################################################
### Head: Model wm_theme
##

sc_icon_theme_usage () {

	local cmd_name="$THE_CMD_FILE_NAME"

cat << EOF

Usage:
	$ $cmd_name icon_theme [name]


Example:
	$ $cmd_name icon_theme

	$ $cmd_name icon_theme 'Papirus-Maia'
	$ $cmd_name icon_theme 'Papirus'
	$ $cmd_name icon_theme 'Papirus-Dark'
	$ $cmd_name icon_theme 'Papirus-Dark-Maia'
	$ $cmd_name icon_theme 'Papirus-Light'
	$ $cmd_name icon_theme 'Papirus-Light-Maia'

EOF

}

# sc_icon_theme () {
#
# 	local icon_theme="$1"
#
# 	if [ "none${icon_theme}" = "none" ]; then
# 		echo
# 		echo "## Need {name}"
# 		sc_icon_theme_usage
# 		return
# 	fi
#
# 	sys_xfce_set_icon_theme "$icon_theme"
#
# }

sc_icon_theme () {

	local icon_theme="$1"

	if [ "none${icon_theme}" = "none" ]; then
		sys_xfce_get_icon_theme
		return
	fi

	sys_xfce_set_icon_theme "$icon_theme"

}

##
### Tail: Model wm_theme
################################################################################
