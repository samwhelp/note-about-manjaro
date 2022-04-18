#!/usr/bin/env bash

set -e


################################################################################
### Head: pantheon
##
pantheon_config_install () {

	echo
	echo "## Config: pantheon"
	echo

	pantheon_set_wallpaper

	pantheon_set_theme

	pantheon_set_keybindings_screensaver

	pantheon_set_keybindings_switch_monitor

	pantheon_set_keybindings_pip

	pantheon_set_keybindings_start_here

	pantheon_set_keybindings_about_window

	pantheon_set_keybindings_about_workspace

	pantheon_set_keybindings_custom


	echo
}

pantheon_set_wallpaper () {

	echo
	echo "### pantheon_set_wallpaper"
	echo

	## Wallpaper
	echo "gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/xfce/palm-wave.jpg'"
	#gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/xfce/palm-wave.jpg'

	echo "gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/xfce/palm-beach.jpg'"
	#gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/xfce/palm-beach.jpg'

	echo

}


pantheon_set_theme () {

	echo
	echo "### pantheon_set_theme"
	echo

	#pantheon_set_theme_gruvbox
	#pantheon_set_theme_dracula
	#pantheon_set_theme_nordic
	pantheon_set_theme_matcha_dark_aliz
}



pantheon_set_theme_gruvbox () {

	## Theme Type
	## $ gsettings list-recursively | grep 'org.gnome.metacity.theme'
	# org.gnome.metacity.theme name ''
	# org.gnome.metacity.theme type 'gtk'
	##
	#gsettings set org.gnome.metacity.theme type 'gtk'

	## Theme
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'

	echo "gsettings set org.gnome.desktop.wm.preferences theme 'Gruvbox'"
	gsettings set org.gnome.desktop.wm.preferences theme 'Gruvbox'

	echo "gsettings set org.gnome.desktop.interface gtk-theme 'Gruvbox'"
	gsettings set org.gnome.desktop.interface gtk-theme 'Gruvbox'

	echo "gsettings set org.gnome.desktop.interface icon-theme 'Gruvbox-Dark'"
	gsettings set org.gnome.desktop.interface icon-theme 'Gruvbox-Dark'

	echo "gsettings set org.gnome.desktop.interface cursor-theme 'breeze_cursors'"
	gsettings set org.gnome.desktop.interface cursor-theme 'breeze_cursors'


	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'
	## $ gsettings list-recursively | grep 'org.gnome.desktop' | grep 'theme'
	# org.gnome.desktop.wm.preferences theme 'Gruvbox'
	# org.gnome.desktop.interface cursor-theme 'breeze_cursors'
	# org.gnome.desktop.interface icon-theme 'Gruvbox-Dark'
	# org.gnome.desktop.interface gtk-theme 'Gruvbox'
	# org.gnome.desktop.interface gtk-key-theme 'Default'
	# org.gnome.desktop.sound theme-name 'ubuntu'
	##

}

pantheon_set_theme_dracula () {

	## Theme Type
	## $ gsettings list-recursively | grep 'org.gnome.metacity.theme'
	# org.gnome.metacity.theme name ''
	# org.gnome.metacity.theme type 'gtk'
	##
	#gsettings set org.gnome.metacity.theme type 'gtk'

	## Theme
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'

	echo "gsettings set org.gnome.desktop.wm.preferences theme 'Dracula'"
	gsettings set org.gnome.desktop.wm.preferences theme 'Dracula'

	echo "gsettings set org.gnome.desktop.interface gtk-theme 'Dracula'"
	gsettings set org.gnome.desktop.interface gtk-theme 'Dracula'

	echo "gsettings set org.gnome.desktop.interface icon-theme 'Dracula'"
	gsettings set org.gnome.desktop.interface icon-theme 'Dracula'

	echo "gsettings set org.gnome.desktop.interface cursor-theme 'breeze_cursors'"
	gsettings set org.gnome.desktop.interface cursor-theme 'breeze_cursors'


	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'
	## $ gsettings list-recursively | grep 'org.gnome.desktop' | grep 'theme'
	# org.gnome.desktop.wm.preferences theme 'Dracula'
	# org.gnome.desktop.interface cursor-theme 'breeze_cursors'
	# org.gnome.desktop.interface icon-theme 'Dracula'
	# org.gnome.desktop.interface gtk-theme 'Dracula'
	# org.gnome.desktop.interface gtk-key-theme 'Default'
	# org.gnome.desktop.sound theme-name 'ubuntu'
	##

}

pantheon_set_theme_nordic () {

	## Theme Type
	## $ gsettings list-recursively | grep 'org.gnome.metacity.theme'
	# org.gnome.metacity.theme name ''
	# org.gnome.metacity.theme type 'gtk'
	##
	#gsettings set org.gnome.metacity.theme type 'gtk'

	## Theme
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'

	echo "gsettings set org.gnome.desktop.wm.preferences theme 'Nordic'"
	gsettings set org.gnome.desktop.wm.preferences theme 'Nordic'

	echo "gsettings set org.gnome.desktop.interface gtk-theme 'Nordic'"
	gsettings set org.gnome.desktop.interface gtk-theme 'Nordic'

	echo "gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'"
	gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'

	echo "gsettings set org.gnome.desktop.interface cursor-theme 'breeze_cursors'"
	gsettings set org.gnome.desktop.interface cursor-theme 'breeze_cursors'


	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'
	## $ gsettings list-recursively | grep 'org.gnome.desktop' | grep 'theme'
	# org.gnome.desktop.wm.preferences theme 'Nordic'
	# org.gnome.desktop.interface cursor-theme 'breeze_cursors'
	# org.gnome.desktop.interface icon-theme 'Papirus-Dark'
	# org.gnome.desktop.interface gtk-theme 'Nordic'
	# org.gnome.desktop.interface gtk-key-theme 'Default'
	# org.gnome.desktop.sound theme-name 'ubuntu'
	##

}

pantheon_set_theme_matcha_dark_aliz () {

	## Theme Type
	## $ gsettings list-recursively | grep 'org.gnome.metacity.theme'
	# org.gnome.metacity.theme name ''
	# org.gnome.metacity.theme type 'gtk'
	##
	#gsettings set org.gnome.metacity.theme type 'gtk'

	## Theme
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'

	echo "gsettings set org.gnome.desktop.wm.preferences theme 'Matcha-dark-aliz'"
	gsettings set org.gnome.desktop.wm.preferences theme 'Matcha-dark-aliz'

	echo "gsettings set org.gnome.desktop.interface gtk-theme 'Matcha-dark-aliz'"
	gsettings set org.gnome.desktop.interface gtk-theme 'Matcha-dark-aliz'

	echo "gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'"
	gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'

	echo "gsettings set org.gnome.desktop.interface cursor-theme 'breeze_cursors'"
	gsettings set org.gnome.desktop.interface cursor-theme 'breeze_cursors'


	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'
	## $ gsettings list-recursively | grep 'org.gnome.desktop' | grep 'theme'
	# org.gnome.desktop.wm.preferences theme 'Nordic'
	# org.gnome.desktop.interface cursor-theme 'breeze_cursors'
	# org.gnome.desktop.interface icon-theme 'Papirus-Dark'
	# org.gnome.desktop.interface gtk-theme 'Nordic'
	# org.gnome.desktop.interface gtk-key-theme 'Default'
	# org.gnome.desktop.sound theme-name 'ubuntu'
	##

}


pantheon_set_keybindings_screensaver () {
	echo
	echo "### pantheon_set_keybindings_screensaver"
	echo

	# org.gnome.settings-daemon.plugins.media-keys screensaver ['<Super>l']



	echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "'"['<Super>bracketleft']"'"'
	gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "['<Super>bracketleft']"
}


pantheon_set_keybindings_switch_monitor () {
	echo
	echo "### pantheon_set_keybindings_switch_monitor"
	echo

	# org.gnome.mutter.keybindings switch-monitor ['<Super>p', 'XF86Display']


	echo 'gsettings set org.gnome.mutter.keybindings switch-monitor "'"['<Super>bracketright', 'XF86Display']"'"'
	gsettings set org.gnome.mutter.keybindings switch-monitor "['<Super>bracketright', 'XF86Display']"
}

pantheon_set_keybindings_pip () {
	echo
	echo "### pantheon_set_keybindings_pip"
	echo

	# org.pantheon.desktop.gala.keybindings pip ['<Super>f']


	echo 'gsettings set org.pantheon.desktop.gala.keybindings pip "'"['<Super>p']"'"'
	gsettings set org.pantheon.desktop.gala.keybindings pip "['<Super>p']"
}


pantheon_set_keybindings_start_here () {

	echo
	echo "### pantheon_set_keybindings_start_here"
	echo

	# org.gnome.desktop.wm.keybindings panel-main-menu ['<Super>space', '<Alt>F2']



	#echo 'gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "'"['<Super>Tab', '<Alt>F2']"'"'
	#gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "['<Super>Tab', '<Alt>F2']"


	echo 'gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "'"['<Alt>F2']"'"'
	gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "['<Alt>F2']"

}

pantheon_set_keybindings_about_window () {

	pantheon_set_keybindings_expose_windows


	pantheon_set_keybindings_show_desktop

	pantheon_set_keybindings_switch_windows

	pantheon_set_keybindings_win_close

	pantheon_set_keybindings_toggle_fullscreen

	pantheon_set_keybindings_toggle_maximized

	pantheon_set_keybindings_minimize

	pantheon_set_keybindings_begin_move

	pantheon_set_keybindings_begin_resize

	pantheon_set_keybindings_toggle_above

	pantheon_set_keybindings_toggle_shaded

	pantheon_set_keybindings_raise_or_lower

	pantheon_set_keybindings_toggle_tiled

}

pantheon_set_keybindings_expose_windows () {
	echo
	echo "### pantheon_set_keybindings_expose_windows"
	echo

	# org.pantheon.desktop.gala.keybindings expose-windows ['<Super>w']
	# org.pantheon.desktop.gala.keybindings expose-all-windows ['<Super>a']



	echo 'gsettings set org.pantheon.desktop.gala.keybindings expose-windows "'"['<Alt>e']"'"'
	gsettings set org.pantheon.desktop.gala.keybindings expose-windows "['<Alt>e']"

	echo 'gsettings set org.pantheon.desktop.gala.keybindings expose-all-windows "'"['<Alt>r', '<Super>Tab']"'"'
	gsettings set org.pantheon.desktop.gala.keybindings expose-all-windows "['<Alt>r', '<Super>Tab']"
}

pantheon_set_keybindings_show_desktop () {

	echo
	echo "### pantheon_set_keybindings_show_desktop"
	echo

	# org.gnome.desktop.wm.keybindings show-desktop ['<Super>Down', '<Super>s']

	gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Alt>d', '<Super>grave', '<Alt>j', '<Alt>Down']"

}

pantheon_set_keybindings_switch_windows () {

	#org.gnome.desktop.wm.keybindings switch-windows-backward ['<Alt><Shift>Tab']
	#org.gnome.desktop.wm.keybindings switch-windows ['<Alt>Tab']

	gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Super>a', '<Super>h', '<Super>Left']"
	gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Super>s', '<Super>l', '<Super>Right']"


}

pantheon_set_keybindings_win_close () {

	echo
	echo "### pantheon_set_keybindings_win_close"
	echo

	echo 'gsettings set org.gnome.desktop.wm.keybindings close "'"['<Super>q', '<Alt>F4']"'"'
	gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q', '<Alt>F4']"

}

pantheon_set_keybindings_toggle_fullscreen () {

	## Fullscreen
	gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>f', 'F11']"

}

pantheon_set_keybindings_toggle_maximized () {

	# org.gnome.desktop.wm.keybindings toggle-maximized ['<Super>Up']

	gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Super>w', '<Alt>Up', '<Alt>k']"

}

pantheon_set_keybindings_minimize () {

	#gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>h']"
	gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>x']"

}

pantheon_set_keybindings_begin_move () {
	# org.gnome.desktop.wm.keybindings begin-move ['<Alt>F7']

	gsettings set org.gnome.desktop.wm.keybindings begin-move "['<Super>e', '<Alt>F7']"
}

pantheon_set_keybindings_begin_resize () {

	# org.gnome.desktop.wm.keybindings begin-resize ['<Alt>F8']

	gsettings set org.gnome.desktop.wm.keybindings begin-resize "['<Super>r', '<Alt>F8']"
}

pantheon_set_keybindings_toggle_above () {
	# org.gnome.desktop.wm.keybindings toggle-above @as []


	#gsettings set org.gnome.desktop.wm.keybindings always-on-top "['<Super>t']"
	gsettings set org.gnome.desktop.wm.keybindings toggle-above "['<Super>t']"
}

pantheon_set_keybindings_toggle_shaded () {
	# org.gnome.desktop.wm.keybindings toggle-shaded @as []

	gsettings set org.gnome.desktop.wm.keybindings toggle-shaded "['<Super>y']"
}

pantheon_set_keybindings_raise_or_lower () {
	# org.gnome.desktop.wm.keybindings raise-or-lower @as []

	gsettings set org.gnome.desktop.wm.keybindings raise-or-lower "['<Super>m']"
}

pantheon_set_keybindings_toggle_tiled () {

	#gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "'<Super>l'"
	#gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "'<Super>]'"

	gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Super><Control>h', '<Super><Control>Left']"
	gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Super><Control>l', '<Super><Control>Right']"
}





pantheon_set_keybindings_about_workspace () {

	## gsettings list-recursively | grep 'org.gnome.desktop.wm.keybindings switch-to-workspace'
	##  gsettings list-recursively | grep workspace | sort

	# org.gnome.desktop.wm.keybindings switch-to-workspace-down @as []
	# org.gnome.desktop.wm.keybindings switch-to-workspace-last ['<Super>End']
	# org.gnome.desktop.wm.keybindings switch-to-workspace-left ['<Super>Left']
	# org.gnome.desktop.wm.keybindings switch-to-workspace-right ['<Super>Right']
	# org.gnome.desktop.wm.keybindings switch-to-workspace-up @as []
	# org.gnome.desktop.wm.keybindings toggle-on-all-workspaces @as []
	# org.gnome.desktop.wm.preferences num-workspaces 4
	# org.gnome.desktop.wm.preferences workspace-names ['Term', 'Edit', 'Web', 'File', '']
	# org.gnome.mutter dynamic-workspaces true
	# org.gnome.mutter workspaces-only-on-primary true

	#org.pantheon.desktop.gala.keybindings cycle-workspaces-next ['<Super>Tab']
	#org.pantheon.desktop.gala.keybindings cycle-workspaces-previous ['<Super><Shift>Tab']



	## Workspace
	#gsettings set org.gnome.mutter dynamic-workspaces true
	gsettings set org.gnome.mutter dynamic-workspaces false
	gsettings set org.gnome.desktop.wm.preferences num-workspaces 5
	gsettings set org.gnome.desktop.wm.preferences workspace-names "['Term', 'Edit', 'Web', 'File', 'Misc']"


	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last "['<Super>End', '<Alt>z']"

	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Super>Page_Up', '<Control><Alt>Up', '<Alt>k']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super>Page_Down', '<Control><Alt>Down', '<Alt>j']"

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Alt>h', '<Alt>Left']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Alt>l', '<Alt>Right']"

	gsettings set org.pantheon.desktop.gala.keybindings cycle-workspaces-previous "['<Alt>a']"
	gsettings set org.pantheon.desktop.gala.keybindings cycle-workspaces-next "['<Alt>s']"



	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Alt>1']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Alt>2']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Alt>3']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Alt>4']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Alt>5']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Alt>6']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "['<Alt>7']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "['<Alt>8']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Alt>9']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "['<Alt>0']"

	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Shift><Alt>exclam']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Shift><Alt>at']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Shift><Alt>numbersign']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Shift><Alt>dollar']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Shift><Alt>percent']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "['<Shift><Alt>asciicircum']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "['<Shift><Alt>ampersand']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "['<Shift><Alt>asterisk']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "['<Shift><Alt>parenleft']"
	#gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "['<Shift><Alt>parenright']"

	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Alt><Super>1']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Alt><Super>2']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Alt><Super>3']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Alt><Super>4']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Alt><Super>5']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "['<Alt><Super>6']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "['<Alt><Super>7']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "['<Alt><Super>8']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "['<Alt><Super>9']"
	# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "['<Alt><Super>10']"

	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Super>1']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Super>2']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Super>3']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Super>4']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Super>5']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "['<Super>6']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "['<Super>7']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "['<Super>8']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "['<Super>9']"
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "['<Super>10']"


}


pantheon_set_keybindings_custom () {

	## Custom Keybindings
	gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/editor/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files-1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/settings-shortcuts/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-shuf/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-default/']"




	## Terminal
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/name "'Terminal'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/command "'sakura -m'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/binding "'<Alt>Return'"

	## Terminal (1)
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/name "'Terminal-1'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/command "'xfce4-terminal --maximize'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/binding "'<Shift><Alt>a'"

	## Terminal (2)
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2/name "'Terminal-2'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2/command "'sakura -m'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2/binding "'<Control><Alt>a'"

	## Terminal (3)
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3/name "'Terminal-3'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3/command "'xterm'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3/binding "'<Shift><Alt>t'"

	## Terminal (4)
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4/name "'Terminal-4'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4/command "'urxvt'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4/binding "'<Control><Alt>t'"




	## Rofi Show Run
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/name "'Rofi-Show-Run'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/command "'rofi -show run'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/binding "'<Shift><Alt>r'"

	## Rofi Show Window
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/name "'Rofi-Show-Window'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/command "'rofi -show window -show-icons'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/binding "'<Shift><Alt>w'"

	## Rofi Show Drun
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/name "'Rofi-Show-Drun'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/command "'rofi -show drun -show-icons'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/binding "'<Shift><Alt>d'"




	## Editor
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/editor/name "'Editor'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/editor/command "'mousepad'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/editor/binding "'<Shift><Alt>e'"

	## Browser
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/name "'Browser'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/command "'firefox'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/binding "'<Shift><Alt>b'"

	## Files
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/name "'Files'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/command "'pcmanfm-qt'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/binding "'<Shift><Alt>f'"

	## Files-1
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files-1/name "'Files-1'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files-1/command "'thunar'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files-1/binding "'<Shift><Alt>g'"



	## Settings-Shortcuts
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/settings-shortcuts/name "'Settings-Shortcuts'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/settings-shortcuts/command "'io.elementary.switchboard settings://input/keyboard/shortcuts'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/settings-shortcuts/binding "'<Shift><Alt>s'"


	## Volume-Control
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control/name "'Volume-Control'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control/command "'mate-volume-control'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control/binding "'<Shift><Alt>v'"


	## Volume-Toggle-Mute
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute/name "'Volume-Toggle-Mute'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute/command "'amixer -q -D pulse sset Master toggle'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute/binding "'<Alt>m'"

	## Volume-Decrease
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease/name "'Volume-Decrease'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease/command "'amixer -q -D pulse sset Master 5%- unmute'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease/binding "'<Shift><Alt>comma'"

	## Volume-Increase
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase/name "'Volume-Decrease'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase/command "'amixer -q -D pulse sset Master 5%+ unmute'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase/binding "'<Shift><Alt>period'"

	## Volume-Decrease-Slowly
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly/name "'Volume-Decrease-Slowly'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly/command "'amixer -q -D pulse sset Master 1%- unmute'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly/binding "'<Control><Alt>comma'"

	## Volume-Increase-Slowly
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly/name "'Volume-Increase-Slowly'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly/command "'amixer -q -D pulse sset Master 1%+ unmute'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly/binding "'<Control><Alt>period'"


	## Wallpaper-Shuf
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-shuf/name "'Wallpaper-Shuf'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-shuf/command "'wallpaper-select-gnome shuf_favorite'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-shuf/binding "'<Alt>w'"

	## Wallpaper-Default
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-default/name "'Wallpaper-Default'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-default/command "'wallpaper-select-gnome default'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-default/binding "'<Control><Alt>w'"

}

##
### Tail: pantheon
################################################################################


################################################################################
### Head: plank
##
plank_config_install () {

	echo
	echo "## Config: plank"
	echo

	echo "mkdir -p $HOME/.config/autostart"
	mkdir -p "$HOME/.config/autostart"


	echo "install -Dm644 ./config/plank/plank.desktop $HOME/.config/autostart/plank.desktop"
	install -Dm644 "./config/plank/plank.desktop" "$HOME/.config/autostart/plank.desktop"

	echo
}
##
### Tail: plank
################################################################################




################################################################################
### Head: thunar
##
thunar_config_install () {

	echo "## Config: thunar"
	echo

	echo "mkdir -p $HOME/.config/Thunar"
	mkdir -p "$HOME/.config/Thunar"


	echo "install -Dm644 ./config/thunar/uca.xml $HOME/.config/Thunar/uca.xml"
	install -Dm644 "./config/thunar/uca.xml" "$HOME/.config/Thunar/uca.xml"

	echo
}
##
### Tail: thunar
################################################################################


################################################################################
### Head: pcmanfm-qt
##
pcmanfm_qt_config_install () {

	echo "## Config: pcmanfm-qt"
	echo

	echo "mkdir -p $HOME/.config/pcmanfm-qt/default"
	mkdir -p "$HOME/.config/pcmanfm-qt/default"

	echo "install -Dm644 ./config/pcmanfm-qt/default/settings.conf $HOME/.config/pcmanfm-qt/default/settings.conf"
	install -Dm644 "./config/pcmanfm-qt/default/settings.conf" "$HOME/.config/pcmanfm-qt/default/settings.conf"


	echo
}
##
### Tail: pcmanfm-qt
################################################################################


################################################################################
### Head: rofi
##
rofi_config_install () {


	echo "## Config: rofi"
	echo

	echo "mkdir -p $HOME/.config/rofi"
	mkdir -p "$HOME/.config/rofi"


	echo "install -Dm644 ./config/rofi/config.rasi $HOME/.config/rofi/config.rasi"
	install -Dm644 "./config/rofi/config.rasi" "$HOME/.config/rofi/config.rasi"


	rofi_put_app_desktop_entry

	echo
}

rofi_put_app_desktop_entry () {

	echo "mkdir -p $HOME/.local/share/applications"
	mkdir -p "$HOME/.local/share/applications"

	echo "install -Dm644 ./config/rofi/rofi-show-drun.desktop $HOME/.local/share/applications/rofi-show-drun.desktop"
	install -Dm644 "./config/rofi/rofi-show-drun.desktop" "$HOME/.local/share/applications/rofi-show-drun.desktop"

	echo "install -Dm644 ./config/rofi/rofi-show-run.desktop $HOME/.local/share/applications/rofi-show-run.desktop"
	install -Dm644 "./config/rofi/rofi-show-run.desktop" "$HOME/.local/share/applications/rofi-show-run.desktop"

	echo "install -Dm644 ./config/rofi/rofi-show-window.desktop $HOME/.local/share/applications/rofi-show-window.desktop"
	install -Dm644 "./config/rofi/rofi-show-window.desktop" "$HOME/.local/share/applications/rofi-show-window.desktop"

}
##
### Tail: rofi
################################################################################


################################################################################
### Head: xfce4-terminal
##
xfce4_terminal_config_install () {

	echo "## Config: xfce4-terminal"
	echo

	echo "mkdir -p $HOME/.config/xfce4/terminal"
	mkdir -p "$HOME/.config/xfce4/terminal"

	echo "install -Dm644 ./config/xfce4-terminal/terminalrc $HOME/.config/xfce4/terminal/terminalrc"
	install -Dm644 "./config/xfce4-terminal/terminalrc" "$HOME/.config/xfce4/terminal/terminalrc"

	echo
}
##
### Tail: xfce4-terminal
################################################################################


################################################################################
### Head: sakura
##
sakura_config_install () {

	echo "## Config: sakura"
	echo

	echo "mkdir -p $HOME/.config/sakura"
	mkdir -p "$HOME/.config/sakura"


	echo "install -Dm644 ./config/sakura/sakura.conf $HOME/.config/sakura/sakura.conf"
	install -Dm644 "./config/sakura/sakura.conf" "$HOME/.config/sakura/sakura.conf"

	#sakura_put_my_desktop_entry

	echo
}

sakura_put_my_desktop_entry () {

	echo
	echo "mkdir -p $HOME/.local/share/applications"
	mkdir -p "$HOME/.local/share/applications"

	echo "install -Dm644 /usr/share/applications/sakura.desktop $HOME/.local/share/applications/sakura.desktop"
	install -Dm644 "/usr/share/applications/sakura.desktop" "$HOME/.local/share/applications/sakura.desktop"

	echo "sed -i 's/^Exec=sakura/Exec=sakura -m/g' $HOME/.local/share/applications/sakura.desktop"
	sed -i 's/^Exec=sakura/Exec=sakura -m/g' "$HOME/.local/share/applications/sakura.desktop"
	echo
}
##
### Tail: sakura
################################################################################


################################################################################
### Head: fcitx
##
fcitx_config_install () {

	echo "## Config: fcitx"
	echo


	echo "mkdir -p $HOME/.config/fcitx/conf"
	mkdir -p "$HOME/.config/fcitx/conf"


	echo "install -Dm644 ./config/fcitx/profile $HOME/.config/fcitx/profile"
	install -Dm644 "./config/fcitx/profile" "$HOME/.config/fcitx/profile"


	echo "install -Dm644 ./config/fcitx/conf/fcitx-classic-ui.config $HOME/.config/fcitx/conf/fcitx-classic-ui.config"
	install -Dm644 "./config/fcitx/conf/fcitx-classic-ui.config" "$HOME/.config/fcitx/conf/fcitx-classic-ui.config"


	fcitx_config_install_im_config


	echo
}

fcitx_config_install_im_config () {

	echo "install -Dm644 ./config/fcitx/.pam_environment $HOME/.pam_environment"
	install -Dm644 "./config/fcitx/.pam_environment" "$HOME/.pam_environment"

}
##
### Tail: fcitx
################################################################################


################################################################################
### Head: qt5ct
##
qt5ct_config_install () {

	echo "## Config: qt5ct"
	echo

	echo "mkdir -p $HOME/.config/qt5ct"
	mkdir -p "$HOME/.config/qt5ct"


	echo "install -Dm644 ./config/qt5ct/qt5ct.conf $HOME/.config/qt5ct/qt5ct.conf"
	install -Dm644 "./config/qt5ct/qt5ct.conf" "$HOME/.config/qt5ct/qt5ct.conf"

	echo

}
##
### Tail: qt5ct
################################################################################


################################################################################
### Head: gtk3
##
gtk3_config_install () {

	echo "## Config: gtk3"
	echo

	echo "mkdir -p $HOME/.config/gtk-3.0"
	mkdir -p "$HOME/.config/gtk-3.0"


	echo "install -Dm644 ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini"
	install -Dm644 "./config/gtk3/settings.ini" "$HOME/.config/gtk-3.0/settings.ini"

	echo

}
##
### Tail: gtk3
################################################################################


################################################################################
### Head: gtk2
##
gtk2_config_install () {

	echo "## Config: gtk2"
	echo

	echo "install -Dm644 ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0"
	install -Dm644 "./config/gtk2/.gtkrc-2.0" "$HOME/.gtkrc-2.0"

	echo
}
##
### Tail: gtk2
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	pantheon_config_install

	plank_config_install

	# thunar_config_install
	#
	# pcmanfm_qt_config_install
	#
	# rofi_config_install
	#
	# xfce4_terminal_config_install
	#
	# sakura_config_install
	#
	# fcitx_config_install
	#
	# qt5ct_config_install
	#
	# gtk3_config_install
	#
	# gtk2_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
