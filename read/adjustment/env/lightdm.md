---
title: lightdm 微調
nav_order: 5090
has_children: false
parent: 環境微調
---


# lightdm 微調

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
