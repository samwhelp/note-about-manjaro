

################################################################################
### Head: Model background
##

sc_background_usage () {

	local cmd_name="$THE_CMD_FILE_NAME"

cat << EOF

Usage:
	$ $cmd_name background [name]


Example:
	$ $cmd_name background

	$ $cmd_name background '/usr/share/backgrounds/xfce/palm-wave.jpg'


EOF

}


sc_background () {

	local background="$1"

	if [ "none${background}" = "none" ]; then
		sys_grub_get_background
		return
	fi

	sys_grub_set_background "$background"

}

##
### Tail: Model background
################################################################################
