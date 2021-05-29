

sub_run_cursor_theme () {
	#echo "sub_run_cursor_theme"
	sc_cursor_theme "$@"
}

sub_run_cursor_theme_help () {
	#echo "sub_run_cursor_theme_help"
	sc_cursor_theme_usage "$@"
}

sub_run_cursor_theme_default () {
	#echo "sub_run_cursor_theme_default"
	#sc_cursor_theme_default "$@"
	sys_xfce_set_cursor_theme_default
}
