

sub_run_ui_theme () {
	#echo "sub_run_ui_theme"
	sc_ui_theme "$@"
}

sub_run_ui_theme_help () {
	#echo "sub_run_ui_theme_help"
	sc_ui_theme_usage "$@"
}

sub_run_ui_theme_default () {
	#echo "sub_run_ui_theme_default"
	#sc_ui_theme_default "$@"
	sys_xfce_set_ui_theme_default
}
