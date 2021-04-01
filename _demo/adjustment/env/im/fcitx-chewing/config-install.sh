#!/usr/bin/env bash

set -e


################################################################################
### Head: fcitx
##
fcitx_config_install () {

	echo
	echo "mkdir -p $HOME/.config/fcitx/conf"
	mkdir -p $HOME/.config/fcitx/conf


	echo "install -m 644 ./config/fcitx/profile $HOME/.config/fcitx/profile"
	install -m 644 ./config/fcitx/profile $HOME/.config/fcitx/profile


	echo "install -m 644 ./config/fcitx/conf/fcitx-classic-ui.config $HOME/.config/fcitx/conf/fcitx-classic-ui.config"
	install -m 644 ./config/fcitx/conf/fcitx-classic-ui.config $HOME/.config/fcitx/conf/fcitx-classic-ui.config


	fcitx_config_install_im_config


	echo
}

fcitx_config_install_im_config () {

	echo "install -m 644 ./config/fcitx/.pam_environment $HOME/.pam_environment"
	install -m 644 ./config/fcitx/.pam_environment $HOME/.pam_environment

}
##
### Tail: fcitx
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	fcitx_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
