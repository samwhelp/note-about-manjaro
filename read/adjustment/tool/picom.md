---
title: picom
nav_order: 6010
has_children: false
parent: 工具微調
grand_parent: 微調
---


## Link

* [https://discover.manjaro.org/packages/picom](https://discover.manjaro.org/packages/picom)
* Arch Wiki / [Picom](https://wiki.archlinux.org/title/Picom)

| Source | Package | 設定檔 | 安裝指令 |
| --- | --- | --- |
| GitHub / yshui / [picom](https://github.com/yshui/picom) | Community / [picom](https://archlinux.org/packages/community/x86_64/picom/) | [~/.config/picom/picom.conf](https://github.com/yshui/picom/blob/next/picom.sample.conf) | `pamac install picom` |
| GitHub / ibhagwan / [picom](https://github.com/ibhagwan/picom) | Aur / [picom-ibhagwan-git](https://aur.archlinux.org/packages/picom-ibhagwan-git/) | [~/.config/picom/picom.conf](https://github.com/ibhagwan/picom/blob/next-rebase/picom.sample.conf) | `pamac build picom-ibhagwan-git` |
| GitHub / tryone144 / [picom](https://github.com/tryone144/picom) | Aur / [picom-tryone-git](https://aur.archlinux.org/packages/picom-tryone-git/) | [~/.config/picom/picom.conf](https://github.com/tryone144/picom/blob/next/picom.sample.conf) | `pamac build picom-tryone-git` |
| GitHub / jonaburg / [picom](https://github.com/jonaburg/picom) | Aur / [picom-jonaburg-git](https://aur.archlinux.org/packages/picom-jonaburg-git/) | [~/.config/picom/picom.conf](https://github.com/jonaburg/picom/blob/next/picom.sample.conf) | `pamac build picom-jonaburg-git` |


## 設定檔路徑

* ~/.config/picom/picom.conf


## 查詢

### Community

執行

``` sh
pamac search picom
```

顯示

```
picom                                                                                  8.2-1  community
    X compositor that may fix tearing issues
```

執行

``` sh
pamac info picom
```

顯示

```
Name                  : picom
Version               : 8.2-1
Description           : X compositor that may fix tearing issues
URL                   : https://github.com/yshui/picom
Licenses              : MIT MPL
Repository            : community
Installed Size        : 384.5 kB
Depends On            : hicolor-icon-theme libconfig libdbus libev libgl pcre pixman xcb-util-image
                        xcb-util-renderutil
Optional Dependencies : dbus: For controlling picom via D-Bus [Installed]
                        python: For running picom-convgen.py [Installed]
                        xorg-xwininfo: For picom-trans
                        xorg-xprop: For picom-trans [Installed]
Make Dependencies     : asciidoc git mesa meson ninja uthash
Provides              : compton
Replaces              : compton
Conflicts With        : compton
Packager              : Alexander Rødseth <rodseth@gmail.com>
Build Date            : 10/26/2020
Signatures            : Yes
```

### Aur

執行

``` sh
pamac search picom -a
```

顯示

```
pantheon-lite                                            6-1                                  AUR
    Pantheon Lite Session (Gala replaced with openbox &
    picom)
compton-old-git                                          r437.1765c9d-1                       AUR
    Old version of compton, before the picom fork,
    avoids some regressions
apicompat-git                                            r125.5f916b1-3                       AUR
    Checks recent changes to a Go project for backwards
    incompatible changes
picomc-git                                               v0.4.2.r12.g64285b3-1                AUR
    A tiny CLI Minecraft launcher
picomc                                                   0.4.3-2                              AUR
    A tiny CLI Minecraft launcher
picom-tryone-git                                         1477_Next.196.g9bb21fc_2020.09.16-1  AUR
    tryone144's picom fork with dual_kawase blur, an X
    compositor (fork of compton)
picom-rounded-corners-legacy-glx2                        r1553.469bc39-1                      AUR
    X Compositor (a fork of xcompmgr-dana)
    (experimental branch with rounded corners)
picom-rounded-corners                                    r1392.bae5bf0-1                      AUR
    X Compositor (a fork of xcompmgr-dana) (with
    rounded corners patch)
picom-ibhagwan-git                                       1577_Next.296.g6d87428_2021.02.05-1  AUR
    iBhagwan's compton|picom fork (X compositor) with
    dual_kawase blur and rounded corners
picom-git                                                1430_8.rc2.21.gfd6ff82_2020.06.06-1  AUR
    X compositor (fork of compton) (git-version)
picom-jonaburg-git                           [Installed] 0.1-4                                AUR
    jonaburg's picom fork with tryone144's dual_kawase
    blur and ibhagwan's rounded corners, an X
    compositor (compton's fork)
picom                                                    8.2-1                                community
    X compositor that may fix tearing issues
```


## 安裝指令範例


### picom

執行下面指令，安裝「picom」

``` sh
pamac install picom
```

執行下面指令，複製「picom」的「設定檔範例」到「~/.config/picom/picom.conf」

``` sh
mkdir -p ~/.config/picom
cp /etc/xdg/picom.conf ~/.config/picom/picom.conf
```

或是執行下面指令，從網路下載「picom」的「[設定檔範例](https://github.com/yshui/picom/blob/next/picom.sample.conf)」到「~/.config/picom/picom.conf」

``` sh
curl -fLo ~/.config/picom/picom.conf --create-dirs \
	'https://raw.githubusercontent.com/yshui/picom/next/picom.sample.conf'
```

### picom-jonaburg-git

執行下面指令，安裝「picom-jonaburg-git」

``` sh
pamac build picom-jonaburg-git
```

執行下面指令，複製「picom」的「設定檔範例」到「~/.config/picom/picom.conf」

``` sh
mkdir -p ~/.config/picom
cp /etc/xdg/picom.conf.example ~/.config/picom/picom.conf
```

或是執行下面指令，從網路下載「picom」的「[設定檔範例](https://github.com/jonaburg/picom/blob/next/picom.sample.conf)」到「~/.config/picom/picom.conf」

``` sh
curl -fLo ~/.config/picom/picom.conf --create-dirs \
	'https://raw.githubusercontent.com/jonaburg/picom/next/picom.sample.conf'
```

若視窗不要corner，將下面這行

```
corner-radius = 10.0;
```

改成

```
corner-radius = 0.0;
```

## 設定範例

* [修改範例](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/tool/picom/profile/)
