
# style-switch-xfce

## Install

Run

``` sh
mkdir -p "$HOME/.local/bin"

wget 'https://raw.githubusercontent.com/samwhelp/note-about-manjaro/gh-pages/_demo/project/style-xfce/style-switch/style-switch-xfce' -O "$HOME/.local/bin/style-switch-xfce"

chmod 755 "$HOME/.local/bin/style-switch-xfce"
```

Or Run

``` sh
curl -fsSL 'https://raw.githubusercontent.com/samwhelp/note-about-manjaro/gh-pages/_demo/project/style-xfce/style-switch/remote-install.sh' | bash
```

Or Run

``` sh
wget 'https://raw.githubusercontent.com/samwhelp/note-about-manjaro/gh-pages/_demo/project/style-xfce/style-switch/remote-install.sh' -q -O - | bash
```


## Usage


### Help

``` sh
$ style-switch-xfce
```

or

``` sh
$ style-switch-xfce help
```


### Debug

``` sh
$ export DEBUG_SS_CTRL=true
```

### fzf

``` sh
style-switch-xfce fzf
```


## Install Theme

* [style-theme](../style-theme)


## GUI Tool

* [xfce4-appearance-settings](https://docs.xfce.org/xfce/xfce4-settings/appearance)
* [xfwm4-settings](https://docs.xfce.org/xfce/xfwm4/preferences)
