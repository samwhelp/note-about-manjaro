#!/usr/bin/env bash

set -e


################################################################################
### Head: profile
##
profile_config_install () {

	echo "## Config: profile"
	echo

	#echo "mkdir -p $HOME"
	#mkdir -p "$HOME"


	echo "install -Dm644 ./config/profile/.profile $HOME/.profile"
	install -Dm644 "./config/profile/.profile" "$HOME/.profile"


	local now=$(date +%Y%m%d_%s)

	if [ -f "$HOME/.bash_profile" ]; then
		mv "$HOME/.bash_profile" "$HOME/.bash_profile.bak.$now"
	fi

	echo
}
##
### Tail: profile
################################################################################


################################################################################
### Head: editor
##
editor_config_install () {

	echo

	echo "## Config: editor"
	echo

	if [ -a "$HOME/bin/vi" ]; then
		echo "File Exists: $HOME/bin/vi"
		file "$HOME/bin/vi"
		echo
		return	
	fi

	echo "mkdir -p $HOME/bin"
	mkdir -p "$HOME/bin"

	echo "ln -sf /usr/bin/nvim $HOME/bin/vi"
	ln -sf /usr/bin/nvim "$HOME/bin/vi"

	echo

	

}
##
### Tail: editor
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	profile_config_install
	editor_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
