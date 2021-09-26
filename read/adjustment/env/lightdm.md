---
title: lightdm 微調
nav_order: 5090
has_children: false
parent: 環境微調
grand_parent: 微調
---


# lightdm 微調

## 參考連結

* Arch Wiki / [LightDM](https://wiki.archlinux.org/title/LightDM)


## lightdm-gtk-greeter

* [腳本](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/env/lightdm)


## 設定檔路徑

* [/etc/lightdm/lightdm-gtk-greeter.conf](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/env/lightdm/config/lightdm/lightdm-gtk-greeter.conf)


## 修改說明

### 更改背景圖

```
background = /usr/share/backgrounds/xfce/nature-3181144.jpg
```

### 將「工具面板(panel)」改放置到上方。

```
panel-position = top
```

## 圖形使用者介面工具


* lightdm-gtk-greeter-settings-pkexec (LightDM GTK+ Greeter settings) (/usr/share/applications/lightdm-gtk-greeter-settings.desktop)


## Cache

執行

``` sh
sudo cat /var/cache/lightdm/dmrc/$(id -un).dmrc
```

顯示

```
[Desktop]
Language=en_US.utf8
Session=xfce
```


## lightdm-webkit2-greeter

若要更改採用「[lightdm-webkit2-greeter](https://archlinux.org/packages/community/x86_64/lightdm-webkit2-greeter/)」，請參考「[另一篇](https://samwhelp.github.io/note-about-manjaro/read/theme/lightdm-theme.html)」的說明。
