

################################################################################
### Head: Model wm_theme
##

sc_cursor_theme_usage () {

	local cmd_name="$THE_CMD_FILE_NAME"

cat << EOF

Usage:
	$ $cmd_name cursor_theme [name] [size]


Example:
	$ $cmd_name cursor_theme

	$ $cmd_name cursor_theme 'default'

	$ $cmd_name cursor_theme 'xcursor-breeze'
	$ $cmd_name cursor_theme 'xcursor-breeze' 24

EOF

}

# sc_cursor_theme () {
#
# 	local cursor_theme_name="$1"
# 	local cursor_theme_size="$2"
#
# 	if [ "none${cursor_theme_name}" = "none" ]; then
# 		echo
# 		echo "## Need {name}"
# 		sc_cursor_theme_usage
# 		return
# 	fi
#
# 	sys_xfce_set_cursor_theme "$cursor_theme_name" "$cursor_theme_size"
#
# }

sc_cursor_theme () {

	local cursor_theme_name="$1"
	local cursor_theme_size="$2"

	if [ "none${cursor_theme_name}" = "none" ]; then
		sys_xfce_get_cursor_theme
		return
	fi

	sys_xfce_set_cursor_theme "$cursor_theme_name" "$cursor_theme_size"

}

##
### Tail: Model wm_theme
################################################################################
