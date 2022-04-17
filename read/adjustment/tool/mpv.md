---
title: mpv
nav_order: 6032
has_children: false
parent: 工具微調
grand_parent: 微調
---


# mpv

* [微調腳本](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/tool/mpv)


## 相關連結

* [https://software.manjaro.org/package/mpv](https://software.manjaro.org/package/mpv)
* Arch Wiki / [mpv](https://wiki.archlinux.org/index.php/mpv)


## 設定檔路徑

* [~/.config/mpv/mpv.conf](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/tool/mpv/config/mpv/mpv.conf)


## 安裝指令

執行

``` sh
sudo pacman -Sy --needed mpv youtube-dl
```

或是執行

``` sh
pamac install mpv youtube-dl
```

## 如何測試

執行下面指令

``` sh
mpv 'https://www.youtube.com/watch?v=I6WgT7JkkQk'
```
