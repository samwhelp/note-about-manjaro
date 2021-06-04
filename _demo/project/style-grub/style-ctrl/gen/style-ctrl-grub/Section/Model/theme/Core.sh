

################################################################################
### Head: Model theme
##

sc_theme_usage () {

	local cmd_name="$THE_CMD_FILE_NAME"

cat << EOF

Usage:
	$ $cmd_name theme [name]


Example:
	$ $cmd_name theme

	$ $cmd_name theme '/usr/share/grub/themes/manjaro/theme.txt'


EOF

}


sc_theme () {

	local theme="$1"

	if [ "none${theme}" = "none" ]; then
		sys_grub_get_theme
		return
	fi

	sys_grub_set_theme "$theme"

}

##
### Tail: Model theme
################################################################################
