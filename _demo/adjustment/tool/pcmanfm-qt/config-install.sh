#!/usr/bin/env bash

set -e


################################################################################
### Head: pcmanfm-qt
##
pcmanfm_qt_config_install () {

	echo "## Config: pcmanfm-qt"
	echo


	mkdir -p "$HOME/.config/pcmanfm-qt/default"
	echo "mkdir -p $HOME/.config/pcmanfm-qt/default"

	cp ./config/pcmanfm-qt/default/settings.conf "$HOME/.config/pcmanfm-qt/default/settings.conf"
	echo "cp ./config/pcmanfm-qt/default/settings.conf $HOME/.config/pcmanfm-qt/default/settings.conf"

	echo
}
##
### Tail: pcmanfm-qt
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	pcmanfm_qt_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
