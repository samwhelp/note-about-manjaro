

sub_run_wm_theme () {
	#echo "sub_run_wm_theme"
	sc_wm_theme "$@"
}

sub_run_wm_theme_help () {
	#echo "sub_run_wm_theme_help"
	sc_wm_theme_usage "$@"
}

sub_run_wm_theme_default () {
	#echo "sub_run_wm_theme_default"
	#sc_wm_theme_default "$@"
	sys_xfce_set_wm_theme_default
}
