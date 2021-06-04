#!/usr/bin/env bash

#set -e


################################################################################
### Head: theme
##
theme_asset_install () {

	theme_asset_install_grub_theme_main

}

theme_asset_install_grub_theme_main () {

	## create dir
	mkdir -p 'asset/grub-themes-deepin'

	cd 'asset/grub-themes-deepin'

	## download

	wget -c 'http://ftp.ubuntu-tw.org/mirror/deepin/pool/main/g/grub-themes-deepin/grub-themes-deepin_1.0.0-1_all.deb'

	## extract
	## https://github.com/samwhelp/note-about-deb/tree/gh-pages/_demo/deb/concept/start
	ar x 'grub-themes-deepin_1.0.0-1_all.deb'

	mkdir -p 'grub-themes-deepin'

	tar -p -C 'grub-themes-deepin' -xf 'data.tar.xz'

	## install
	theme_asset_install_grub_theme_main_to_system


	## back
	cd ../..


}


theme_asset_install_grub_theme_main_to_system () {

	if [ -a "/boot/grub/themes/main" ]; then ## file is exists
		echo "File Exists: /boot/grub/themes/main"
		return 0
	fi

	sudo mkdir -p "/boot/grub/themes"

	sudo cp -a 'grub-themes-deepin/boot/grub/themes/deepin' '/boot/grub/themes/main'
	##sudo cp -a 'grub-themes-deepin/boot/grub/themes/deepin' '/usr/share/grub/themes/main'


	## change_background
	theme_asset_install_grub_theme_main_change_background
}


theme_asset_install_grub_theme_main_change_background () {
	sudo cp '/boot/grub/themes/main/background.png' '/boot/grub/themes/main/background.ori.png'



	# https://imagemagick.org/script/convert.php
	magick convert '/usr/share/backgrounds/wallpapers-2018/palm-wave.jpg' 'background.png'

	sudo cp 'background.png' '/boot/grub/themes/main/background.png'
}


##
### Tail: theme
################################################################################


################################################################################
### Head: main
##
main_asset_install_prepare_dir () {
	mkdir -p 'asset'
}

main_asset_install () {

	main_asset_install_prepare_dir

	theme_asset_install


}
## start
main_asset_install

##
### Tail: main
################################################################################
