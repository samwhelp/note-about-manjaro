

sub_run_icon_theme () {
	#echo "sub_run_icon_theme"
	sc_icon_theme "$@"
}

sub_run_icon_theme_help () {
	#echo "sub_run_icon_theme_help"
	sc_icon_theme_usage "$@"
}

sub_run_icon_theme_default () {
	#echo "sub_run_icon_theme"
	#sc_icon_theme_default "$@"
	sys_xfce_set_icon_theme_default
}
