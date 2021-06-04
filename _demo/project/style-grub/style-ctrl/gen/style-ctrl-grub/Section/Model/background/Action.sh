

sub_run_background () {
	#echo "sub_run_background"
	sc_background "$@"
}

sub_run_background_help () {
	#echo "sub_run_background_help"
	sc_background_usage "$@"
}

sub_run_background_default () {
	#echo "sub_run_background_default"
	#sc_background_default "$@"
	sys_grub_set_background_default
}
