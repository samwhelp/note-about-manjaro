---
title: xfce4-terminal
nav_order: 6002
has_children: false
parent: 工具微調
grand_parent: 微調
---


# xfce4-terminal


* [腳本](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/tool/xfce4-terminal)


## Link

* [https://discover.manjaro.org/packages/xfce4-terminal](https://discover.manjaro.org/packages/xfce4-terminal)


## 設定檔路徑

* [~/.config/xfce4/terminal/terminalrc](https://github.com/samwhelp/note-about-manjaro/blob/gh-pages/_demo/adjustment/tool/xfce4-terminal/config/xfce4-terminal/terminalrc)


## colorschemes

* /usr/share/xfce4/terminal/colorschemes/
* ~/.local/share/xfce4/terminal/colorschemes


執行

```
ls -1 /usr/share/xfce4/terminal/colorschemes/
```

顯示

```
black-on-white.theme
dark-pastels.theme
green-on-black.theme
solarized-dark.theme
solarized-light.theme
tango.theme
white-on-black.theme
xterm.theme
```

### nord.theme

* [https://github.com/arcticicestudio/nord-xfce-terminal](https://github.com/arcticicestudio/nord-xfce-terminal)

執行下面指令安裝

``` sh
git clone https://github.com/arcticicestudio/nord-xfce-terminal.git
install -Dm644 nord-xfce-terminal/src/nord.theme ~/.local/share/xfce4/terminal/colorschemes/nord.theme
```
