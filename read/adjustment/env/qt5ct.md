---
title: qt5ct 微調
nav_order: 5080
has_children: false
parent: 環境微調
grand_parent: 微調
---

# qt5ct 微調


## Link

* Marjaro Wiki / [Set all Qt app's to use GTK+ font & theme settings](https://wiki.manjaro.org/index.php/Set_all_Qt_app%27s_to_use_GTK%2B_font_%26_theme_settings)
* [https://wiki.archlinux.org/index.php/Qt](https://wiki.archlinux.org/index.php/Qt)
* [https://samwhelp.github.io/note-about-manjaro/read/adjustment/env/editor.html](https://samwhelp.github.io/note-about-manjaro/read/adjustment/env/editor.html)

## 微調腳本

* [qt5ct](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/part/qt5ct)


## 設定檔路徑

* [~/.config/qt5ct/qt5ct.conf](https://github.com/samwhelp/note-about-manjaro/blob/gh-pages/_demo/adjustment/part/qt5ct/config/qt5ct/qt5ct.conf)


## Config File Path / Manjaro Default

* [/etc/skel/.config/qt5ct/qt5ct.conf](https://github.com/samwhelp/note-about-manjaro/blob/gh-pages/_demo/adjustment/part/qt5ct/config/qt5ct-manjaro/qt5ct.conf)


## Explore

``` sh
pacman -Ql qt5ct
```

## 圖形介面工具

* qt5ct (Qt5 Settings) (Qt5 Configuration Tool) (/usr/share/applications/qt5ct.desktop)


## qt5-styleplugins

執行

``` sh
pamac search qt5-styleplugins -a
```

顯示

```
qt5-styleplugins                                         5.0.0.20170311-27  AUR 
    Additional style plugins for Qt5
```

安裝

``` sh
pamac build qt5-styleplugins
```