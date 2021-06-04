

################################################################################
### Head: Sys
##

sys_grub_theme_config_file_copy () {
	cp '/etc/default/grub' '/tmp/grub'
}

sys_grub_theme_config_file_sync () {
	sudo install -Dm644 '/tmp/grub' '/etc/default/grub'
}

sys_grub_theme_config_line_is_exist () {
	grep '^GRUB_THEME=' '/tmp/grub' 2>&1 >/dev/null
}

sys_grub_theme_config_line_remove () {
	sed -i '/^GRUB_THEME=/d' '/tmp/grub'
}

sys_grub_theme_config_line_comment () {
	sed -i 's/^GRUB_THEME=/#GRUB_THEME=/' '/tmp/grub'
}


sys_grub_theme_config_line_clear () {
	sys_grub_theme_config_line_remove
	#sys_grub_theme_config_line_comment
}

sys_grub_theme_config_line_append () {
	##echo >> '/tmp/grub'
	echo 'GRUB_THEME="'"$1"'"' >> '/tmp/grub'
}


sys_grub_theme_config () {

	sys_grub_theme_config_file_copy

	if sys_grub_theme_config_line_is_exist; then
		sys_grub_theme_config_line_clear
	fi

	##sys_grub_theme_config_line_append '/usr/share/grub/themes/manjaro/theme.txt'
	sys_grub_theme_config_line_append "$1"

	sys_grub_theme_config_file_sync
}

sys_grub_config_update () {
	sudo update-grub
}



sys_grub_get_theme () {
	##echo 'Todo: sys_grub_get_theme'
	grep '^GRUB_THEME=' /etc/default/grub | cut -d '=' -f 2 | cut -d '"' -f 2
}

sys_grub_set_theme () {
	##echo 'Todo: sys_grub_set_theme'
	sys_grub_theme_config "$1"
	sys_grub_config_update
}

sys_grub_set_theme_default () {
	echo 'Todo: sys_grub_set_theme_default'
}

sys_grub_get_background () {
	#echo 'Todo: sys_grub_get_background'
	grep '^GRUB_BACKGROUND=' /etc/default/grub | cut -d '=' -f 2 | cut -d '"' -f 2
}

sys_grub_set_background () {
	echo 'Todo: sys_grub_set_background'
}

sys_grub_set_background_default () {
	echo 'Todo: sys_grub_set_background_default'
}

##
### Tail: Sys
################################################################################
