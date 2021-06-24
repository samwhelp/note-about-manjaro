---
title: leftwm
nav_order: 4010
has_children: false
parent: 桌面環境微調
grand_parent: 微調
---


# leftwm


## Link

* [http://leftwm.org/](http://leftwm.org/)
* GitHub / [leftwm](https://github.com/leftwm/leftwm)
* Arch Wiki / [LeftWM](https://wiki.archlinux.org/title/LeftWM)


## Config File Path

* ~/.config/leftwm/config.toml


## Search

執行

``` sh
pamac search leftwm -a
```

顯示

```
leftwm-theme-git                                                            2:r40.e6907a6-1         AUR
    Theme manager for LeftWM
leftwm-git                                                                  2:0.2.7.r59.gf84ec87-1  AUR
    Leftwm - A tiling window manager for the adventurer
leftwm                                                                      1:0.2.7-1               AUR
    Leftwm - A tiling window manager for the adventurer
```

## AUR

* [leftwm](https://aur.archlinux.org/packages/leftwm)
* [leftwm-git](https://aur.archlinux.org/packages/leftwm-git)
* [leftwm-theme-git](https://aur.archlinux.org/packages/leftwm-theme-git)


## Info

執行

``` sh
pamac info leftwm -a
```

執行

``` sh
pamac info leftwm-git -a
```

執行

``` sh
pamac info leftwm-theme-git -a
```

## Build and Install

執行

``` sh
pamac build leftwm-git
```

執行

``` sh
pamac build leftwm-theme-git
```


## 注意事項

在這個環境，登入時，放在「/etc/xdg/autostart/」這個資料夾沒被執行到，

解決方式，複製到「~/.config/autostart/」這個資料夾。

``` sh
cp /etc/xdg/autostart/fcitx-autostart.desktop ~/.config/autostart/
cp /etc/xdg/autostart/xfce4-notifyd.desktop ~/.config/autostart/
cp /etc/xdg/autostart/nm-applet.desktop ~/.config/autostart/
cp /etc/xdg/autostart/pulseaudio.desktop ~/.config/autostart/
cp /etc/xdg/autostart/mate-volume-control-status-icon.desktop ~/.config/autostart/
```
