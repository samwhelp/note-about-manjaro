---
title: lightdm-theme
nav_order: 2050
has_children: false
parent: 佈景主題
---


# lightdm-theme

## 參考連結

* Arch Wiki / [LightDM](https://wiki.archlinux.org/title/LightDM)


## lightdm-webkit2-greeter

### 探索

執行

``` sh
pamac search lightdm-webkit2-greeter
```

顯示

```
lightdm-webkit2-greeter-manjaro-dark                                                1.3.2-1  community
    A webkit2 greeter for LightDM build for Manjaro Dark version
lightdm-webkit2-greeter-manjaro                                                     1.3.2-1  community
    A webkit2 greeter for LightDM build for Manjaro
lightdm-webkit2-greeter                                                             2.2.5-4  community
    LightDM greeter that uses WebKit2 for theming via HTML/JavaScript.
```

### 資訊

執行

``` sh
pamac info lightdm-webkit2-greeter
```

顯示

```
Name                  : lightdm-webkit2-greeter
Version               : 2.2.5-4
Description           : LightDM greeter that uses WebKit2 for theming via HTML/JavaScript.
URL                   : https://github.com/antergos/web-greeter
Licenses              : GPL3
Repository            : community
Installed Size        : 2.1 MB
Depends On            : lightdm webkit2gtk accountsservice gnome-backgrounds
Make Dependencies     : gobject-introspection meson gettext dbus-glib
Packager              : Filipe Laíns <lains@archlinux.org>
Build Date            : 09/25/2020
Signatures            : Yes
```

* Arch Package / [lightdm-webkit2-greeter/](https://archlinux.org/packages/community/x86_64/lightdm-webkit2-greeter/)


### 安裝

執行

``` sh
pamac install lightdm-webkit2-greeter
```

### 設定

修改「/etc/lightdm/lightdm.conf」這個檔案，

將原本的

```
greeter-session=lightdm-gtk-greeter
```

改成

```
greeter-session=lightdm-webkit2-greeter
```


## lightdm-webkit2-theme

### 探索

執行

``` sh
pamac search lightdm-webkit2-theme -a
```

顯示

```
lightdm-webkit2-theme-tty-git                                                        r5.0b8fc23-1   AUR
    A simple terminal style theme for lightdm-webkit2-greeter
lightdm-webkit2-theme-sapphire                                                       1.0.1-1        AUR
    A simple Sapphire theme for lightdm-webkit2-greeter
lightdm-webkit2-theme-reactive                                                       0.4.4-2        AUR
    Reactive, A Simple and fast lightdm webkit2 theme for linux
lightdm-webkit2-theme-obsidian                                                       1.2.1-1        AUR
    A simple dark theme for lightdm-webkit2-greeter
lightdm-webkit2-theme-material2-git                                                  r15.2e21881-1  AUR
    A material design LightDM theme for lightdm-webkit2-greeter from the latest git
lightdm-webkit2-theme-material2                                                      0.0.5-1        AUR
    A material design LightDM theme for lightdm-webkit2-greeter
lightdm-webkit2-theme-glorious                                                       2.0.5-3        AUR
    A sleek, modern and glorified LightDM webkit2 theme
lightdm-webkit2-theme-bevel-git                                                      0.3-1          AUR
    A fork of Blender3D's theme
lightdm-webkit2-theme-arch                                                           0.1-1          AUR
    Minimal theme for lightdm-webkit2-greeter using humorous wallpapers about Arch
    Linux.
lightdm-webkit2-theme-alter-nosplash                                                 3.0-3          AUR
    AlterLinux webkit2 greeter theme
lightdm-webkit2-theme-alter-git                                                      r58.82f1b9d-1  AUR
    AlterLinux webkit2 greeter theme
lightdm-webkit2-theme-alter                                                          3.0-1          AUR
    AlterLinux webkit2 greeter theme
```

## lightdm-webkit2-theme-list


| theme |
| --- |
| [lightdm-webkit2-theme-glorious](#lightdm-webkit2-theme-glorious) |
| [lightdm-webkit2-theme-glorious](#lightdm-webkit2-theme-glorious) |

## lightdm-webkit2-theme-glorious

### 資訊

執行

```
pamac info lightdm-webkit2-theme-glorious -a
```

顯示

```
Name                  : lightdm-webkit2-theme-glorious
Version               : 2.0.5-3
Description           : A sleek, modern and glorified LightDM webkit2 theme
URL                   : https://github.com/manilarome/lightdm-webkit2-theme-glorious
Licenses              : GPL3
Repository            : AUR
Depends On            : lightdm-webkit2-greeter
Maintainer            : manilarome
First Submitted       : 06/27/2020
Last Modified         : 09/23/2020
Votes                 : 6
```

* AUR / [lightdm-webkit2-theme-glorious](https://aur.archlinux.org/packages/lightdm-webkit2-theme-glorious/)
* GitHub / [lightdm-webkit2-theme-glorious](https://github.com/manilarome/lightdm-webkit2-theme-glorious)

### 安裝

執行

```
pamac build lightdm-webkit2-theme-glorious
```


### 設定

修改「/etc/lightdm/lightdm-webkit2-greeter.conf」這個檔案，

將原本

```
webkit_theme        = antergos
```

改成

```
webkit_theme        = glorious
```

將原本

```
debug_mode          = false
```

改成

```
debug_mode          = true
```


執行下面指令，測試

``` sh
dm-tool switch-to-greeter
```

## lightdm-gtk-greeter

若要採用「[lightdm-gtk-greeter](https://archlinux.org/packages/extra/x86_64/lightdm-gtk-greeter/)」，請參考「[另一篇](https://samwhelp.github.io/note-about-manjaro/read/adjustment/env/lightdm.html)」的說明。

## lightdm-webkit2-theme-tty-git

### 資訊

執行

```
pamac info lightdm-webkit2-theme-tty-git -a
```

顯示

```
Name                  : lightdm-webkit2-theme-tty-git
Version               : r5.0b8fc23-1
Description           : A simple terminal style theme for lightdm-webkit2-greeter
URL                   : https://github.com/eNzyOfficial/lightdm-tty
Licenses              : WTFPL
Repository            : AUR
Depends On            : lightdm-webkit2-greeter
Make Dependencies     : git
Maintainer            : tardog
First Submitted       : 11/07/2017
Last Modified         : 11/07/2017
Votes                 : 1
```

* AUR / [lightdm-webkit2-theme-tty-git](https://aur.archlinux.org/packages/lightdm-webkit2-theme-tty-git/)
* GitHub / [lightdm-tty](https://github.com/eNzyOfficial/lightdm-tty)

### 安裝

執行

```
pamac build lightdm-webkit2-theme-tty-git
```

安裝完畢後，可以執行下面指令，觀看有哪些檔案

``` sh
pacman -Ql lightdm-webkit2-theme-tty-git -q
```

顯示

```
/usr/
/usr/share/
/usr/share/lightdm-webkit/
/usr/share/lightdm-webkit/themes/
/usr/share/lightdm-webkit/themes/tty/
/usr/share/lightdm-webkit/themes/tty/LICENSE
/usr/share/lightdm-webkit/themes/tty/PKGBUILD
/usr/share/lightdm-webkit/themes/tty/README.MD
/usr/share/lightdm-webkit/themes/tty/css/
/usr/share/lightdm-webkit/themes/tty/css/default.css
/usr/share/lightdm-webkit/themes/tty/css/normalize.css
/usr/share/lightdm-webkit/themes/tty/img/
/usr/share/lightdm-webkit/themes/tty/img/bg.jpg
/usr/share/lightdm-webkit/themes/tty/index.html
/usr/share/lightdm-webkit/themes/tty/js/
/usr/share/lightdm-webkit/themes/tty/js/commands.js
/usr/share/lightdm-webkit/themes/tty/js/main.js
/usr/share/lightdm-webkit/themes/tty/js/mock.js
/usr/share/lightdm-webkit/themes/tty/screenshots/
/usr/share/lightdm-webkit/themes/tty/screenshots/screenshot_1.gif
/usr/share/lightdm-webkit/themes/tty/test.sh
```


### 設定

修改「/etc/lightdm/lightdm-webkit2-greeter.conf」這個檔案，

將原本

```
webkit_theme        = antergos
```

改成

```
webkit_theme        = tty
```

執行下面指令，測試

``` sh
dm-tool switch-to-greeter
```
