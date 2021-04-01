#!/usr/bin/env bash

set -e


################################################################################
### Head: gtk3
##
gtk3_config_install () {

	echo "## Config: gtk3"
	echo

	echo "mkdir -p $HOME/.config/gtk-3.0"
	mkdir -p $HOME/.config/gtk-3.0


	echo "cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini"
	cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini

	echo

}
##
### Tail: gtk3
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	gtk3_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
