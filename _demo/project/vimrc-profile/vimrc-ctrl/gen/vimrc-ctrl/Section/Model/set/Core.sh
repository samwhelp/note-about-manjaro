

################################################################################
### Head: Model vimrc_profile_set
##

vimrc_profile_set () {
	#echo "vimrc_profile_set"
	#echo "$@"


	## $ vimrc-ctrl set svim

	local name="$1"
	local source_dir_path="$THE_VIMRC_PROFILE_DIR_PATH/$name"
	local target_dir_path="$THE_VIMRC_DIR_PATH"

	#echo "target_dir_path=$target_dir_path"
	#echo "source_dir_path=$source_dir_path"

	if is_not_vimrc_dir "$source_dir_path"; then ## check ~/vimrc-profile/demo/vimrc
		echo "Not valid vimrc dir: $source_dir_path"
		echo
		echo 'Please run:'
		echo '	$ vimrc-ctrl list'
		echo 'to find valid vimrc dir.'
		return 1
	fi


	rm -f "$target_dir_path"
	echo
	echo rm -f "$target_dir_path"

	ln -sf "$source_dir_path" "$target_dir_path"
	echo
	echo ln -sf "$source_dir_path" "$target_dir_path"

	echo
	file "$target_dir_path"

}

##
### Tail: Model vimrc_profile_set
################################################################################
