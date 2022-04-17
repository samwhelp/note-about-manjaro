#!/usr/bin/env bash

set -e


################################################################################
### Head: plugin
##
plugin_asset_install () {

	echo "## Asset: plugin"
	echo



	# https://atom.io/themes/gruvbox

	apm install gruvbox

	# https://atom.io/themes/gruvbox-dark-ui

	apm install gruvbox-dark-ui

	# https://atom.io/themes/monokai

	apm install monokai

	# language-viml

	apm install language-viml

	# language-lua

	apm install language-lua


	echo

}

##
### Tail: plugin
################################################################################

################################################################################
### Head: main
##
main_asset_install () {
	plugin_asset_install
}
## start
main_asset_install

##
### Tail: main
################################################################################
