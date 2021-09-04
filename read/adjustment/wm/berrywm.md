---
title: berrywm
nav_order: 4031
has_children: false
parent: 桌面環境微調
grand_parent: 微調
---


# berrywm


## 相關連結

* [https://berrywm.org/](https://berrywm.org/)
* GitHub / [berry](https://github.com/JLErvin/berry)
* Arch Wiki / [Window manager](https://wiki.archlinux.org/title/window_manager)
* [berrywm 探索筆記](https://samwhelp.github.io/note-about-berrywm/)


## 查詢

執行

``` sh
pamac search berry
```

顯示

```
rpi-imager                                                                          1.6.2-2  community
    Raspberry Pi Imaging Utility
strawberry                                                                          0.9.3-3  community
    A music player aimed at audio enthusiasts and music collectors
blueberry                                                                           1.4.4-1  community
    Bluetooth configuration tool
```


執行

``` sh
pamac search berry -a
```

顯示

```
...
berry-git                                                        git+fdfd800-1               AUR
    A healthy, bite-sized window manager written over the XLib
    Library
```


執行

``` sh
pamac info berry-git -a
```

顯示

```
Name                  : berry-git
Package Base          : berry
Version               : git+fdfd800-1
Description           : A healthy, bite-sized window manager written over the XLib Library
URL                   : https://github.com/JLErvin/berry
Licenses              : MIT
Repository            : AUR
Depends On            : libx11 libxft libxinerama
Make Dependencies     : gcc make
Maintainer            : jlervin
First Submitted       : 08/25/2018
Last Modified         : 07/07/2021
Votes                 : 2
```

* AUR / [berry-git](https://aur.archlinux.org/packages/berry-git/)


## 安裝

執行

``` sh
pamac build berry-git
```

## 探索

執行下面指令，查看有哪些檔案安裝在系統上

``` sh
pacman -Ql berry-git -q
```

顯示

```
/etc/
/etc/xdg/
/etc/xdg/berry/
/etc/xdg/berry/autostart
/etc/xdg/berry/compile_commands.json
/etc/xdg/berry/sxhkdrc
/etc/xdg/berry/xephyr.sh
/usr/
/usr/local/
/usr/local/bin/
/usr/local/bin/berry
/usr/local/bin/berryc
/usr/local/share/
/usr/local/share/man1/
/usr/local/share/man1/berry.1
/usr/local/share/man1/berryc.1
/usr/share/
/usr/share/applications/
/usr/share/applications/berry.desktop
```


### 如何設定

接下來請閱讀「[berrywm 探索筆記](https://samwhelp.github.io/note-about-berrywm/)」。
