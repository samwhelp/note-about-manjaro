---
title: 修改預設 editor
nav_order: 5001
has_children: false
parent: 微調
---


# 修改預設 editor

* [腳本](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/env/profile)

## 說明

修改「EDITOR」這個環境變數，

Manjaro Xfce 是放在「~/.profile」這裡，

是設定為「/usr/bin/nano」。

可以執行下面指令觀看

``` sh
$ cat ~/.profile
```

顯示

```
export EDITOR=/usr/bin/nano
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
```


## 恢復指令

若修改「~/.profile」後，想要改回來，
只要複製「/etc/skel/.profile」，然後覆蓋「~/.profile」就可以了。

執行

``` sh
$ install -m 644 /etc/skel/.profile "$HOME/.profile"
```
