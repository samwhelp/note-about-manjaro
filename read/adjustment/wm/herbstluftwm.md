---
title: herbstluftwm
nav_order: 4014
has_children: false
parent: 桌面環境微調
grand_parent: 微調
---


# herbstluftwm


## 相關連結

* [https://herbstluftwm.org/](https://herbstluftwm.org/)
* GitHub / [herbstluftwm](https://github.com/herbstluftwm/herbstluftwm)
* Arch Wiki / [Herbstluftwm](https://wiki.archlinux.org/title/Herbstluftwm)
* [herbstluftwm 探索筆記](https://samwhelp.github.io/note-about-herbstluftwm/)


## 查詢

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

## 安裝

執行

``` sh
pamac install herbstluftwm
```

## 探索

執行下面指令，查看有哪些檔案安裝在系統上

``` sh
pacman -Ql herbstluftwm -q
```

顯示

```
/etc/
/etc/xdg/
/etc/xdg/herbstluftwm/
/etc/xdg/herbstluftwm/autostart
/etc/xdg/herbstluftwm/dmenu_run_hlwm
/etc/xdg/herbstluftwm/panel.sh
/etc/xdg/herbstluftwm/restartpanels.sh
/usr/
/usr/bin/
/usr/bin/herbstclient
/usr/bin/herbstluftwm
/usr/share/
/usr/share/bash-completion/
/usr/share/bash-completion/completions/
/usr/share/bash-completion/completions/herbstclient
/usr/share/doc/
/usr/share/doc/herbstluftwm/
/usr/share/doc/herbstluftwm/LICENSE
/usr/share/doc/herbstluftwm/NEWS
/usr/share/doc/herbstluftwm/examples/
/usr/share/doc/herbstluftwm/examples/README
/usr/share/doc/herbstluftwm/examples/dmenu.sh
/usr/share/doc/herbstluftwm/examples/dumpbeautify.sh
/usr/share/doc/herbstluftwm/examples/exec_on_tag.sh
/usr/share/doc/herbstluftwm/examples/execwith.sh
/usr/share/doc/herbstluftwm/examples/float-maximize.sh
/usr/share/doc/herbstluftwm/examples/floatmon.sh
/usr/share/doc/herbstluftwm/examples/herbstcommander.sh
/usr/share/doc/herbstluftwm/examples/keychain.sh
/usr/share/doc/herbstluftwm/examples/lasttag.sh
/usr/share/doc/herbstluftwm/examples/layout.sh
/usr/share/doc/herbstluftwm/examples/loadstate.sh
/usr/share/doc/herbstluftwm/examples/maximize.sh
/usr/share/doc/herbstluftwm/examples/perclient_kb_layout.sh
/usr/share/doc/herbstluftwm/examples/q3terminal.sh
/usr/share/doc/herbstluftwm/examples/savestate.sh
/usr/share/doc/herbstluftwm/examples/scratchpad.sh
/usr/share/doc/herbstluftwm/examples/toggledualhead.sh
/usr/share/doc/herbstluftwm/examples/unminimize.sh
/usr/share/doc/herbstluftwm/examples/windowmenu.sh
/usr/share/doc/herbstluftwm/examples/wselect.sh
/usr/share/doc/herbstluftwm/hlwm-doc.json
/usr/share/doc/herbstluftwm/html/
/usr/share/doc/herbstluftwm/html/herbstclient.html
/usr/share/doc/herbstluftwm/html/herbstluftwm-tutorial.html
/usr/share/doc/herbstluftwm/html/herbstluftwm.html
/usr/share/fish/
/usr/share/fish/vendor_completions.d/
/usr/share/fish/vendor_completions.d/herbstclient.fish
/usr/share/licenses/
/usr/share/licenses/herbstluftwm/
/usr/share/licenses/herbstluftwm/LICENSE
/usr/share/man/
/usr/share/man/man1/
/usr/share/man/man1/herbstclient.1.gz
/usr/share/man/man1/herbstluftwm.1.gz
/usr/share/man/man7/
/usr/share/man/man7/herbstluftwm-tutorial.7.gz
/usr/share/xsessions/
/usr/share/xsessions/herbstluftwm.desktop
/usr/share/zsh/
/usr/share/zsh/functions/
/usr/share/zsh/functions/Completion/
/usr/share/zsh/functions/Completion/X/
/usr/share/zsh/functions/Completion/X/_herbstclient
```


### 如何設定

接下來請閱讀「[herbstluftwm 探索筆記](https://samwhelp.github.io/note-about-herbstluftwm/)」。
