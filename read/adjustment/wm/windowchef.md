---
title: windowchef
nav_order: 4032
has_children: false
parent: 桌面環境微調
grand_parent: 微調
---


# windowchef


## 相關連結

* [https://tudorr.ro/software/windowchef/](https://tudorr.ro/software/windowchef/)
* GitHub / [windowchef](https://github.com/tudurom/windowchef)
* Arch Wiki / [Window manager](https://wiki.archlinux.org/title/window_manager)
* [windowchef 探索筆記](https://samwhelp.github.io/note-about-windowchef/)


## 查詢

執行

``` sh
pamac search windowchef -a
```

顯示

```
windowchef-git                                                                0.5.1.r2.gd2284c1-1  AUR
    A stacking window manager that cooks windows with orders from the
    Waitron.
windowchef                                                                    0.5.2-1              AUR
    A stacking window manager that cooks windows with orders from the Waitron
```


執行

``` sh
pamac info windowchef -a
```

顯示

```
Name                  : windowchef
Version               : 0.5.2-1
Description           : A stacking window manager that cooks windows with orders from the Waitron
URL                   : https://github.com/tudurom/windowchef
Licenses              : ISC
Repository            : AUR
Depends On            : libxcb xcb-util-wm xcb-util-keysyms
Optional Dependencies : sxhkd [Installed]
                        wmutils-git
                        lemonbar [Installed]
Make Dependencies     : xorgproto
Conflicts With        : windowchef-git
Maintainer            : tudor
First Submitted       : 09/30/2016
Last Modified         : 04/24/2021
Votes                 : 2
```


執行

``` sh
pamac info windowchef-git -a
```

顯示

```
Name                  : windowchef-git
Version               : 0.5.1.r2.gd2284c1-1
Description           : A stacking window manager that cooks windows with orders from the Waitron.
URL                   : https://github.com/tudurom/windowchef
Licenses              : ISC
Repository            : AUR
Depends On            : libxcb xcb-util-wm
Optional Dependencies : sxhkd [Installed]
                        wmutils-git
                        lemonbar [Installed]
Make Dependencies     : git xorgproto
Conflicts With        : windowchef
Maintainer            : tudor
First Submitted       : 10/29/2016
Last Modified         : 04/23/2020
```

* AUR / [windowchef](https://aur.archlinux.org/packages/windowchef/)
* AUR / [windowchef-git](https://aur.archlinux.org/packages/windowchef-git/)

## 安裝

執行

``` sh
pamac build windowchef-git
```

## 探索

執行下面指令，查看有哪些檔案安裝在系統上

``` sh
pacman -Ql windowchef-git -q
```

顯示

```
/usr/
/usr/bin/
/usr/bin/waitron
/usr/bin/windowchef
/usr/share/
/usr/share/doc/
/usr/share/doc/windowchef/
/usr/share/doc/windowchef/LICENSE
/usr/share/doc/windowchef/README.md
/usr/share/doc/windowchef/contrib/
/usr/share/doc/windowchef/contrib/.gitignore
/usr/share/doc/windowchef/examples/
/usr/share/doc/windowchef/examples/sxhkdrc
/usr/share/doc/windowchef/examples/windowchefrc
/usr/share/man/
/usr/share/man/man1/
/usr/share/man/man1/waitron.1.gz
/usr/share/man/man1/windowchef.1.gz
/usr/share/xsessions/
/usr/share/xsessions/windowchef.desktop
```


### 如何設定

接下來請閱讀「[windowchef 探索筆記](https://samwhelp.github.io/note-about-windowchef/)」。
