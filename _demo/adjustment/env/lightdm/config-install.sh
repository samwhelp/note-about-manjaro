#!/usr/bin/env bash

set -e


################################################################################
### Head: lightdm
##
lightdm_config_install () {

	echo "## Config: lightdm"
	echo

	echo "sudo install -m 644 ./config/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf"
	sudo install -m 644 ./config/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf

	echo

}
##
### Tail: lightdm
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	lightdm_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
