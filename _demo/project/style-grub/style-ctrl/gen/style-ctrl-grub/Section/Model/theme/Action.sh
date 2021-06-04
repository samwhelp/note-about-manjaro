

sub_run_theme () {
	#echo "sub_run_theme"
	sc_theme "$@"
}

sub_run_theme_help () {
	#echo "sub_run_theme_help"
	sc_theme_usage "$@"
}

sub_run_theme_default () {
	#echo "sub_run_theme_default"
	#sc_theme_default "$@"
	sys_grub_set_theme_default
}
