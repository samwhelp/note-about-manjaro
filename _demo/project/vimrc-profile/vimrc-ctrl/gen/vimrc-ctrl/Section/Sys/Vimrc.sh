

################################################################################
### Head: Sys
##

is_vimrc_dir () {
	local dir_path="$1"
	local vimrc_file_path="$dir_path/vimrc"

	if [ ! -f "$vimrc_file_path" ]; then
		return 1
	fi

	return 0
}

is_not_vimrc_dir () {
	local dir_path="$1"
	local vimrc_file_path="$dir_path/vimrc" ## ~/.vimrc-profile/demo/vimrc

	if [ -f "$vimrc_file_path" ]; then ## check ~/.vimrc-profile/demo/vimrc
		return 1
	fi

	return 0
}

vimrc_find_dir_path_by_name () {
	local name="$1"
	echo "$THE_PROFILE_DIR_PATH/$name"
}


##
### Tail: Sys
################################################################################
