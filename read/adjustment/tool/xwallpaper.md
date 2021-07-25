---
title: xwallpaper
nav_order: 6032
has_children: false
parent: 工具微調
grand_parent: 微調
---


# xwallpaper

## Link

* [https://discover.manjaro.org/packages/xwallpaper](https://discover.manjaro.org/packages/xwallpaper)
* [https://github.com/stoeckmann/xwallpaper](https://github.com/stoeckmann/xwallpaper)
* Arch Wiki / List of applications / Other / [Wallpaper setters](https://wiki.archlinux.org/title/List_of_applications/Other#Wallpaper_setters)

## 探索

執行

``` sh
pamac search xwallpaper
```

顯示

```
xwallpaper                                                                          0.7.1-1  community 
    Wallpaper setting utility for X
```

## 資訊

執行

``` sh
pamac info xwallpaper
```

顯示

```
Name                  : xwallpaper
Version               : 0.7.1-1
Description           : Wallpaper setting utility for X
URL                   : https://github.com/stoeckmann/xwallpaper
Licenses              : ISC
Repository            : community
Installed Size        : 49.6 kB
Depends On            : pixman libpng libxpm xcb-util xcb-util-image libjpeg-turbo libseccomp
                        libseccomp.so=2-64 libpixman-1.so=0-64 libjpeg.so=8-64
Packager              : kpcyrd <kpcyrd@archlinux.org>
Build Date            : 06/27/2021
Signatures            : Yes
```

## 安裝

執行

``` sh
pamac install xwallpaper
```

## 使用範例

執行

``` sh
xwallpaper --zoom /usr/share/backgrounds/xfce/palm-wave.jpg
```
