#!/usr/bin/env bash

set -e

################################################################################
### Head: xfce4
##
xfce4_config_install () {
	mkdir -p $HOME/.config/xfce4/xfconf/xfce-perchannel-xml
	echo "mkdir -p $HOME/.config/xfce4/xfconf/xfce-perchannel-xml"

	cp ./config/xfce4/xfconf/xfce-perchannel-xml/keyboards.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/keyboards.xml
	echo "cp ./config/xfce4/xfconf/xfce-perchannel-xml/keyboards.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/keyboards.xml"

	cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
	echo "cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml"

	cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
	echo "cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml"

	cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
	echo "cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml"

	cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
	echo "cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml"

	cp ./config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	echo "cp ./config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml"


	mkdir -p $HOME/.config/xfce4/panel
	echo "mkdir -p $HOME/.config/xfce4/panel"

	cp ./config/xfce4/panel/whiskermenu-1.rc $HOME/.config/xfce4/panel/whiskermenu-1.rc
	echo "cp ./config/xfce4/panel/whiskermenu-1.rc $HOME/.config/xfce4/panel/whiskermenu-1.rc"


	cp ./config/xfce4/helpers.rc $HOME/.config/xfce4/helpers.rc
	echo "cp ./config/xfce4/helpers.rc $HOME/.config/xfce4/helpers.rc"



}
##
### Tail: xfce4
################################################################################


################################################################################
### Head: theme
##
theme_config_install () {

	theme_config_install_wm_theme
	theme_config_install_ui_theme
	theme_config_install_icon_theme
	theme_config_install_cursor_theme

}

theme_config_install_wm_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
	## <property name="theme" type="string" value="Matcha-sea"/>

	echo "xfconf-query -c 'xfwm4' -p '/general/theme' -s 'Matcha-sea'"
	xfconf-query -c 'xfwm4' -p '/general/theme' -s 'Matcha-sea'

}

theme_config_install_ui_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="ThemeName" type="string" value="Matcha-sea"/>

	echo "xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Matcha-sea'"
	xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Matcha-sea'

}

theme_config_install_icon_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="IconThemeName" type="string" value="Papirus-Maia"/>

	echo "xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Papirus-Maia'"
	xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Papirus-Maia'

}

theme_config_install_cursor_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml

	## <property name="CursorThemeName" type="string" value="default"/>
	## <property name="CursorThemeSize" type="int" value="24"/>

	## <property name="CursorThemeName" type="string" value="xcursor-breeze"/>
	## <property name="CursorThemeSize" type="int" value="24"/>


	echo "xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName' -s 'xcursor-breeze'"
	xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName' -s "xcursor-breeze"

	echo "xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize' -s '24'"
	xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize' -s "24"

}

##
### Tail: theme
################################################################################


################################################################################
### Head: pcmanfm-qt
##
pcmanfm_qt_config_install () {

	mkdir -p "$HOME/.config/pcmanfm-qt/default"
	echo "mkdir -p $HOME/.config/pcmanfm-qt/default"

	cp ./config/pcmanfm-qt/default/settings.conf "$HOME/.config/pcmanfm-qt/default/settings.conf"
	echo "cp ./config/pcmanfm-qt/default/settings.conf $HOME/.config/pcmanfm-qt/default/settings.conf"

}
##
### Tail: pcmanfm-qt
################################################################################


################################################################################
### Head: rofi
##
rofi_config_install () {

	echo "mkdir -p $HOME/.config/rofi"
	mkdir -p "$HOME/.config/rofi"
	

	echo "cp ./config/rofi/config $HOME/.config/rofi/config"
	cp "./config/rofi/config" "$HOME/.config/rofi/config"


	rofi_put_app_desktop_entry
}

rofi_put_app_desktop_entry () {
	mkdir -p "$HOME/.local/share/applications"
	echo "mkdir -p $HOME/.local/share/applications"

	cp "./config/rofi/rofi-show-drun.desktop" "$HOME/.local/share/applications/rofi-show-drun.desktop"
	echo "cp ./config/rofi/rofi-show-drun.desktop $HOME/.local/share/applications/rofi-show-drun.desktop"

	cp "./config/rofi/rofi-show-run.desktop" "$HOME/.local/share/applications/rofi-show-run.desktop"
	echo "cp ./config/rofi/rofi-show-run.desktop $HOME/.local/share/applications/rofi-show-run.desktop"

	cp "./config/rofi/rofi-show-window.desktop" "$HOME/.local/share/applications/rofi-show-window.desktop"
	echo "cp ./config/rofi/rofi-show-window.desktop $HOME/.local/share/applications/rofi-show-window.desktop"

}
##
### Tail: rofi
################################################################################


################################################################################
### Head: sakura
##
sakura_config_install () {

	echo
	echo "mkdir -p $HOME/.config/sakura"
	mkdir -p "$HOME/.config/sakura"


	echo "cp ./config/sakura/sakura.conf $HOME/.config/sakura/sakura.conf"
	cp "./config/sakura/sakura.conf" "$HOME/.config/sakura/sakura.conf"

	sakura_put_my_desktop_entry

}

sakura_put_my_desktop_entry () {

	echo
	echo "mkdir -p $HOME/.local/share/applications"
	mkdir -p "$HOME/.local/share/applications"

	echo "cp /usr/share/applications/sakura.desktop $HOME/.local/share/applications/sakura.desktop"
	cp "/usr/share/applications/sakura.desktop" "$HOME/.local/share/applications/sakura.desktop"

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

	echo
	echo "mkdir -p $HOME/.config/fcitx"
	mkdir -p $HOME/.config/fcitx


	echo "cp ./config/fcitx/profile $HOME/.config/fcitx/profile"
	cp ./config/fcitx/profile $HOME/.config/fcitx/profile
	echo

	fcitx_config_install_im_config

}

fcitx_config_install_im_config () {
	echo
	echo "cp ./config/fcitx/.pam_environment $HOME/.pam_environment"
	cp ./config/fcitx/.pam_environment $HOME/.pam_environment
	echo
}
##
### Tail: fcitx
################################################################################


################################################################################
### Head: gtk3
##
gtk3_config_install () {
	mkdir -p $HOME/.config/gtk-3.0
	echo "mkdir -p $HOME/.config/gtk-3.0"

	cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini
	echo "cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini"
}
##
### Tail: gtk3
################################################################################


################################################################################
### Head: gtk2
##
gtk2_config_install () {

	cp ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0
	echo "cp ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0"

}
##
### Tail: gtk2
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	xfce4_config_install

	theme_config_install

	pcmanfm_qt_config_install

	rofi_config_install

	sakura_config_install

	fcitx_config_install

	gtk3_config_install

	gtk2_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################