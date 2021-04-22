

################################################################################
### Head: Model vimrc_profile_install
##

vimrc_profile_install () {

	## $ vimrc-ctrl install demo https://github.com/samwhelp/tool-svim.git

	local name="$1"
	local repo_url="$2"

	cd "$THE_VIMRC_PROFILE_DIR_PATH" ## cd ~/.vimrc-profile

	echo "$repo_url"

	git clone "$repo_url" "$name" ## git clone https://github.com/samwhelp/tool-svim.git demo

	cd "$OLDPWD"

}

##
### Tail: Model vimrc_profile_install
################################################################################
