

################################################################################
### Head: Url
##

# * https://github.com/samwhelp/skel-project-plan/blob/gh-pages/demo/sh/standalone/bin/demo-ctrl
# * https://www.freedesktop.org/wiki/Specifications/XSettingsRegistry/

##
### Tail: Url
################################################################################


################################################################################
### Head: Note
##

# $ xfconf-query -c 'xsettings' -l | grep Theme
#
# /Gtk/CursorThemeName
# /Gtk/CursorThemeSize
# /Gtk/KeyThemeName
# /Net/FallbackIconTheme
# /Net/IconThemeName
# /Net/SoundThemeName
# /Net/ThemeName


##
### Tail: Note
################################################################################


################################################################################
### Head: Init
##
set -e ## for Exit immediately if a command exits with a non-zero status.
THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_CMD_FILE_NAME=$(basename $0)
##
### Tail: Init
################################################################################
