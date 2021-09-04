---
title: cwm
nav_order: 4041
has_children: false
parent: 桌面環境微調
grand_parent: 微調
---


# cwm


## 相關連結

* [https://cvsweb.openbsd.org/cgi-bin/cvsweb/xenocara/app/cwm/](https://cvsweb.openbsd.org/cgi-bin/cvsweb/xenocara/app/cwm/)
* GitHub / [cwm](https://github.com/leahneukirchen/cwm)
* Arch Wiki / [Cwm](https://wiki.archlinux.org/title/Cwm)
* $ man [cwm](http://man.openbsd.org/cwm.1)
* [cwm 探索筆記](https://samwhelp.github.io/note-about-cwm/)


## 查詢

執行

``` sh
pamac search cwm -a
```

顯示

```
hikari-darcs                                                            1:1.1.0.20200502185221-1   AUR
    Stacking Wayland compositor with additional tiling capabilities,
    heavily inspired by the Calm Window manager (cwm)
hikari                                                                  1:2.3.2-1                  AUR
    Stacking Wayland compositor with additional tiling capabilities,
    heavily inspired by the Calm Window manager (cwm)
mcwm-git                                                                20130209.2.r11.gee7d9df-3  AUR
    A minimalist floating window manager written on top of the XCB
mcwm                                                                    20130209.2-5               AUR
    A minimalist floating window manager written on top of the XCB
cwm-git                                                                 20160402-1                 AUR
    OpenBSD fork of calmwm, a clean and lightweight window manager
cwm                                                                     6.7-1                      AUR
    OpenBSD fork of calmwm, a clean and lightweight window manager
```


執行

``` sh
pamac info cwm -a
```

顯示

```
Name                  : cwm
Version               : 6.7-1
Description           : OpenBSD fork of calmwm, a clean and lightweight window manager
URL                   : http://www.openbsd.org/cgi-bin/man.cgi?query=cwm&sektion=1
Licenses              : BSD
Repository            : AUR
Depends On            : libxft libxrandr
Make Dependencies     : git
Maintainer            : bidulock
First Submitted       : 11/06/2007
Last Modified         : 05/28/2020
Votes                 : 26
```


執行

``` sh
pamac info cwm-git -a
```

顯示

```
Name                  : cwm-git
Version               : 20160402-1
Description           : OpenBSD fork of calmwm, a clean and lightweight window manager
URL                   : http://www.openbsd.org/cgi-bin/man.cgi?query=cwm&sektion=1
Licenses              : custom
Repository            : AUR
Depends On            : libxft libxrandr libxinerama
Make Dependencies     : git pkg-config
Provides              : cwm
Conflicts With        : cwm
Maintainer            : bidulock
First Submitted       : 09/26/2010
Last Modified         : 05/24/2016
Votes                 : 8
```

* AUR / [cwm](https://aur.archlinux.org/packages/cwm/)
* AUR / [cwm-git](https://aur.archlinux.org/packages/cwm-git/)

## 安裝

執行

``` sh
pamac build cwm-git
```

## 探索

執行下面指令，查看有哪些檔案安裝在系統上

``` sh
pacman -Ql cwm-git -q
```

顯示

```
/usr/
/usr/bin/
/usr/bin/cwm
/usr/share/
/usr/share/licenses/
/usr/share/licenses/cwm-git/
/usr/share/licenses/cwm-git/LICENSE
/usr/share/man/
/usr/share/man/man1/
/usr/share/man/man1/cwm.1.gz
/usr/share/man/man5/
/usr/share/man/man5/cwmrc.5.gz
/usr/share/xsessions/
/usr/share/xsessions/cwm.desktop
```


### 如何設定

接下來請閱讀「[cwm 探索筆記](https://samwhelp.github.io/note-about-cwm/)」。
