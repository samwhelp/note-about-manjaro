---
title: xfce
nav_order: 4001
has_children: false
parent: 桌面環境微調
grand_parent: 微調
---


## 腳本

* [xfce微調腳本](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/full/xfce)


## 設定檔路徑


* [~/.config/xfce4/xfconf/xfce-perchannel-xml/keyboards.xml](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/full/xfce/config/xfce4/xfconf/xfce-perchannel-xml/keyboards.xml)
* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/full/xfce/config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml)
* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/full/xfce/config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml)
* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/full/xfce/config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml)
* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/full/xfce/config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml)
* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/full/xfce/config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml)
* [~/.config/xfce4/panel/whiskermenu-1.rc](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/full/xfce/config/xfce4/panel/whiskermenu-1.rc)
* [~/.config/xfce4/helpers.rc](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/full/xfce/config/xfce4/helpers.rc)


## 預設的設定

* 可在「[/etc/skel/.config/xfce4/](https://gitlab.manjaro.org/profiles-and-settings/manjaro-xfce-settings/-/tree/master/skel/.config/xfce4)」找到「manjaro xfce」預設的設定。
* 可在「/etc/xdg/xfce4/」找到「xfce」預設的設定。


## 工具

* [style-ctrl-xfce](https://samwhelp.github.io/note-about-manjaro/read/project/style-xfce/style-ctrl-xfce)
* [style-switch-xfce](https://samwhelp.github.io/note-about-manjaro/read/project/style-xfce/style-switch-xfce.html)


## Source

* [xfce](https://gitlab.xfce.org/xfce)
* GitHub / [xfce-mirror](https://github.com/xfce-mirror)



## 探索

執行

``` sh
pacman -Qo /etc/skel/.config/xfce4/xfconf/
```

顯示

```
/etc/skel/.config/xfce4/xfconf/ is owned by manjaro-xfce-settings 20210124-1
```

執行

``` sh
pacman -Qo /etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-session.xml
```

顯示

```
/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-session.xml is owned by xfce4-session 4.16.0-2
```

執行

``` sh
pacman -Qo /etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
```

顯示

```
/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml is owned by xfce4-settings 4.16.2-1
```

執行

``` sh
pacman -Qo /etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
```

顯示

```
/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml is owned by libxfce4ui 4.16.0-1
```


## Other WM

不執行「xfwm4」，執行其他「Window Manager」，只要修改「~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-session.xml」，

請參考「[範例](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/explore/xfce4-session/config)」。
