---
title: Unbind Super Key
nav_order: 5090
has_children: false
parent: 環境微調
grand_parent: 微調
---


## 探索過程

在「manjaro xfce」的設定，預設按下「Super(Win)」這個鍵盤按鍵，會啟動「whisker-menu」。

我想停掉這個綁定，但在下面的設定檔，找不到相關的設定

* ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
* ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
* /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
* /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
* /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml


於是使用「[manjaro xfce super key](https://www.google.com/search?q=manjaro+xfce+super+key)」當關鍵字查詢，

查詢到「[XFCE super as whisker-menu](https://forum.manjaro.org/t/xfce-super-as-whisker-menu/57382)」這篇討論。

參考該篇提到的，只要將下面的「登入自動啟動」停用就可以了

* ~/.config/autostart/xcape.desktop

## 如何設定

有兩種方式來設定停用

### 方式一

可以透過圖形介面程式「[xfce4-session-settings](https://docs.xfce.org/xfce/xfce4-session/preferences#application_autostart)」來修改。


### 方式二

修改下面的檔案

* ~/.config/autostart/xcape.desktop

原本的內容

```
[Desktop Entry]
Encoding=UTF-8
Version=0.9.4
Type=Application
Name=xcape
Comment=
Exec=xcape -e 'Super_L=Alt_L|F1'
OnlyShowIn=XFCE;
RunHook=0
StartupNotify=false
Terminal=false
Hidden=false
```

修改成

```
[Desktop Entry]
Encoding=UTF-8
Version=0.9.4
Type=Application
Name=xcape
Comment=
Exec=xcape -e 'Super_L=Alt_L|F1'
OnlyShowIn=XFCE;
RunHook=0
StartupNotify=false
Terminal=false
Hidden=true
```

主要的修改是「`Hidden=true`」這行。

當然也可以直接刪除「~/.config/autostart/xcape.desktop」這個檔案。

若要恢復，可以將「/etc/skel/.config/autostart/xcape.desktop」複製到「~/.config/autostart/xcape.desktop」。

## 個人慣用按鍵綁定

我個人慣用的按鍵綁定，請參考「[我的備忘](https://github.com/samwhelp/note-about-manjaro/blob/gh-pages/_demo/adjustment/de/xfce/spec-keybind.md)」。
