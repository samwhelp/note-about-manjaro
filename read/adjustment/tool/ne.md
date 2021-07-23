---
title: ne 
nav_order: 6025
has_children: false
parent: 工具微調
grand_parent: 微調
---

# ne

> ne, the nice editor

* [nice-editor](http://ne.di.unimi.it) ([Github](https://github.com/vigna/ne))
* [doc](https://ne.di.unimi.it/docs/index.html)

## Search

run

``` sh
pamac search 'nice editor' -a
```

show

```
vapoursynth-editor-sandsmark-git                                                                 r19.74.g4e3f161-1    AUR 
    Editor for VapourSynth scripts, sandsmark's fork with vim support and other niceties
pacman4console                                                                                   1.3-1                AUR 
    A 9 level ncurses pacman game with editor, patched not to disturb our package manager and
    to have nice ghosts
ne-git                                                                                           3.3.1.r1.gb226193-1  AUR 
    A nice developer editor, highly recommended by Epitech (aka Episteak) French School - git
    version
ne                                                                                               3.3.1-1              AUR 
    The nice editor, a fast small powerful and simple to use editor
```

## Info

run

```
pamac info ne -a
```

show

```
Name                  : ne
Version               : 3.3.1-1
Description           : The nice editor, a fast small powerful and simple to use editor
URL                   : http://ne.di.unimi.it
Licenses              : GPL3
Repository            : AUR
Depends On            : ncurses texinfo
Maintainer            : valr
First Submitted       : 11/13/2010
Last Modified         : 05/17/2021
Votes                 : 41
```

run

``` sh
pamac info ne-git -a
```

show

```
Name                  : ne-git
Version               : 3.3.1.r1.gb226193-1
Description           : A nice developer editor, highly recommended by Epitech (aka Episteak) French School - git version
URL                   : http://ne.di.unimi.it/
Licenses              : GPL3
Repository            : AUR
Depends On            : ncurses
Make Dependencies     : git
Provides              : ne
Conflicts With        : ne
Maintainer            : FredBezies
First Submitted       : 09/15/2017
Last Modified         : 05/25/2021
```

## Install

``` sh
pamac build ne-git
```

## 按鍵綁定

### Menu

* [https://ne.di.unimi.it/docs/Menus.html](https://ne.di.unimi.it/docs/Menus.html)

| 按鍵組合 | 功能 |
| --- | --- |
| 按兩次Esc | 顯示 Menu Bar |
| `F1` | 顯示 Menu Bar |
| `Shift + Left` | 顯示 Menu Bar |
| `Shift + Right` | 顯示 Menu Bar |
