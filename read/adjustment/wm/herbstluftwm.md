---
title: herbstluftwm
nav_order: 4014
has_children: false
parent: 桌面環境微調
grand_parent: 微調
---


# herbstluftwm


## Link

* [https://herbstluftwm.org/](https://herbstluftwm.org/)
* GitHub / [herbstluftwm](https://github.com/herbstluftwm/herbstluftwm)
* Arch Wiki / [Herbstluftwm](https://wiki.archlinux.org/title/Herbstluftwm)
* [herbstluftwm 探索筆記](https://samwhelp.github.io/note-about-herbstluftwm/)


## Search

執行

``` sh
pamac search herbstluftwm
```

顯示

```
herbstluftwm                                                                       0.9.3-1  community
    Manual tiling window manager for X
```


執行

``` sh
pamac search herbstluftwm -a
```

顯示

```
herbstluftwm-git                                                     0.9.1.r21.gf18eef44-1  AUR
    Manual tiling window manager for X
herbstluftwm                                                         0.9.3-1                community
    Manual tiling window manager for X
```


執行

``` sh
pamac info herbstluftwm
```

顯示

```
Name                  : herbstluftwm
Version               : 0.9.3-1
Description           : Manual tiling window manager for X
URL                   : https://herbstluftwm.org
Licenses              : BSD
Repository            : community
Installed Size        : 2.2 MB
Depends On            : glib2 libxinerama libxrandr
Optional Dependencies : xorg-xsetroot: to set wallpaper color in default autostart
                        xterm: used as the terminal in default autostart
                        dzen2: used in the default panel.sh [Installed]
                        dmenu: used in some example scripts [Installed]
Make Dependencies     : cmake asciidoc libxft
Packager              : Jonathan Steel <jsteel@archlinux.org>
Build Date            : 06/05/2021
Signatures            : Yes
```



執行

``` sh
pamac info herbstluftwm-git -a
```

顯示

```
Name                  : herbstluftwm-git
Version               : 0.9.1.r21.gf18eef44-1
Description           : Manual tiling window manager for X
URL                   : http://herbstluftwm.org
Licenses              : BSD
Repository            : AUR
Depends On            : libx11 libxinerama libxft freetype2
Optional Dependencies : bash [Installed]
                        xterm
                        dmenu [Installed]
                        dzen2 [Installed]
                        dzen2-xft-xpm-xinerama-git [Installed]
Make Dependencies     : git asciidoc cmake
Provides              : herbstluftwm
Conflicts With        : herbstluftwm
Maintainer            : bidulock
First Submitted       : 08/27/2011
Last Modified         : 01/05/2021
Votes                 : 33
```
