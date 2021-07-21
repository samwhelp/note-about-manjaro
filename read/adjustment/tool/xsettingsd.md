---
title: xsettingsd
nav_order: 6032
has_children: false
parent: 工具微調
grand_parent: 微調
---


## Link

* GitHub / derat / [xsettingsd](https://github.com/derat/xsettingsd)


## Search

run

``` sh
pamac search xsettingsd
```

show

```
xsettingsd                                                                          1.0.0-3  community
    Provides settings to X11 applications via the XSETTINGS specification
```

run

```
pamac search xsettingsd -a
```

show

```
xsettingsd-git                                                                r79.b4999f5-4  AUR
    xsettingsd is a daemon that implements the XSETTINGS specification.
xsettingsd                                                                    1.0.0-3        community
    Provides settings to X11 applications via the XSETTINGS specification
```

## Info

run

```
pamac info xsettingsd
```

show

```
Name                  : xsettingsd
Version               : 1.0.0-3
Description           : Provides settings to X11 applications via the XSETTINGS specification
URL                   : https://github.com/derat/xsettingsd
Licenses              : custom:BSD
Repository            : community
Installed Size        : 80.4 kB
Depends On            : libx11 gcc-libs
Make Dependencies     : git scons
Packager              : Felix Yan <felixonmars@archlinux.org>
Build Date            : 07/08/2020
Signatures            : Yes
```

run

```
pamac info xsettingsd-git -a
```

show

```
Name                  : xsettingsd-git
Version               : r79.b4999f5-4
Description           : xsettingsd is a daemon that implements the XSETTINGS specification.
URL                   : https://github.com/derat/xsettingsd
Licenses              : custom:BSD
Repository            : AUR
Depends On            : libx11
Make Dependencies     : git scons
Provides              : xsettingsd
Conflicts With        : xsettingsd
Maintainer            : eschwartz
First Submitted       : 06/19/2013
Last Modified         : 08/20/2018
Votes                 : 27
```


## Install

run

``` sh
pamac install xsettingsd
```

or run

``` sh
pamac build xsettingsd-git
```


## 設定範例

* ~/.xsettingsd

內容如下

```
## theme_dracula
Net/ThemeName "Dracula"
Net/IconThemeName "Dracula"
Gtk/CursorThemeName "xcursor-breeze"
Gtk/CursorThemeSize "24"
```
