---
title: xmonad
nav_order: 4050
has_children: false
parent: 桌面環境微調
grand_parent: 微調
---


# xmonad


## 相關連結

* [xmonad.org](https://xmonad.org/)
* GitHub / [xmonad](https://github.com/xmonad/xmonad)
* Arch Wiki / [xmonad](https://wiki.archlinux.org/title/xmonad)



## 查詢

執行

``` sh
pamac search xmonad
```

顯示

```
xmonad-utils                                                                     0.1.3.3-139  community
    Small collection of X utilities
xmonad-contrib                                                                   0.16-114     community
    Add-ons for xmonad
xmonad                                                                           0.15-134     community
    Lightweight X11 tiled window manager written in Haskell
```

執行

``` sh
pamac search xmonad -a
```

顯示

```
vivarium-git                                                          0.0.4.r3.gd7074de-1     AUR
    A dynamic tiling Wayland compositor inspired by xmonad
velox-git                                                             0.0.2.r244.g4e549c6-1   AUR
    A simple xcb window manager inspired by awesome, xmonad, and dwm.
lockd-git                                                             0.2-1                   AUR
    A simple utility for managing your lock screen on a tiling wm
    (like i3, dwm, xmonad or awesome)
lockd                                                                 0.1-2                   AUR
    A simple utility for managing your lock screen on a tiling wm
    (like i3, dwm, xmonad or awesome)
i3-wk-switch-git                                                      VERSION-1               AUR
    Workspace switcher for i3 wm that emulates xmonad
dk                                                                    1.2-1                   AUR
    A tiling window manager in the vein of dwm, bspwm, and xmonad.
gnome-flashback-xmonad-nopanel                                        0.2.0-1                 AUR
    XMonad support for Gnome Flashback
gnome-flashback-xmonad                                                r25.1242fc4-1           AUR
    XMonad support for Gnome Flashback
xmonad-utils                                                          0.1.3.3-139             community
    Small collection of X utilities
xmonad-recompile-pacman-hook-git                                      r55.64d990d-1           AUR
    Pacman hook to recompile Xmonad config and avoid the infamous
    black screen
xmonad-recompile-hook-git                                             1.2.1-4                 AUR
    Recompile xmonad after package updates
xmonad-log                                                            0.1.0-3                 AUR
    DBus monitor for xmonad log events
xmonad-git                                                            v0.15.r161.gbe1d226-1   AUR
    Lightweight X11 tiled window manager written in Haskell
xmonad-extras-git                                                     r154.b2772a5-1          AUR
    Third party extensions for xmonad with wacky dependencies
xmonad-extras-darcs                                                   20110814-1              AUR
    Third party extensions for xmonad with wacky dependencies
xmonad-contrib-git                                                    v0.16.r574.g8c72f77c-1  AUR
    Add-ons for xmonad
xmonad-contrib                                                        0.16-114                community
    Add-ons for xmonad
xmonad-cinnamon-git                                                   r2.cd41608-1            AUR
    Starts xmonad inside a cinnamon session.
xmonad                                                                0.15-134                community
    Lightweight X11 tiled window manager written in Haskell
```


執行

``` sh
pamac info xmonad
```

顯示

```
Name                  : xmonad
Version               : 0.15-134
Description           : Lightweight X11 tiled window manager written in Haskell
URL                   : https://xmonad.org/
Licenses              : BSD
Repository            : community
Installed Size        : 1.5 MB
Depends On            : ghc haskell-x11 sh haskell-utf8-string haskell-extensible-exceptions
                        haskell-data-default haskell-setlocale
Optional Dependencies : xorg-xmessage: for displaying visual error messages [Installed]
Make Dependencies     : gendesk uusi
Packager              : Felix Yan <felixonmars@archlinux.org>
Build Date            : 06/10/2021
Signatures            : Yes
```


* Arch Package / [xmonad](https://archlinux.org/packages/community/x86_64/xmonad/)


## 安裝

執行

``` sh
pamac install xmonad
```

## 探索

執行下面指令，查看有哪些檔案安裝在系統上

``` sh
pacman -Ql xmonad -q
```

顯示

```
/usr/
/usr/bin/
/usr/bin/xmonad
/usr/lib/
/usr/lib/ghc-8.10.5/
/usr/lib/ghc-8.10.5/site-local/
/usr/lib/ghc-8.10.5/site-local/xmonad-0.15/
/usr/lib/ghc-8.10.5/site-local/xmonad-0.15/Paths_xmonad.dyn_hi
/usr/lib/ghc-8.10.5/site-local/xmonad-0.15/XMonad.dyn_hi
/usr/lib/ghc-8.10.5/site-local/xmonad-0.15/XMonad/
/usr/lib/ghc-8.10.5/site-local/xmonad-0.15/XMonad/Config.dyn_hi
/usr/lib/ghc-8.10.5/site-local/xmonad-0.15/XMonad/Core.dyn_hi
/usr/lib/ghc-8.10.5/site-local/xmonad-0.15/XMonad/Layout.dyn_hi
/usr/lib/ghc-8.10.5/site-local/xmonad-0.15/XMonad/Main.dyn_hi
/usr/lib/ghc-8.10.5/site-local/xmonad-0.15/XMonad/ManageHook.dyn_hi
/usr/lib/ghc-8.10.5/site-local/xmonad-0.15/XMonad/Operations.dyn_hi
/usr/lib/ghc-8.10.5/site-local/xmonad-0.15/XMonad/StackSet.dyn_hi
/usr/lib/libHSxmonad-0.15-Sge4o7tbRO46INiW3AOEF-ghc8.10.5.so
/usr/share/
/usr/share/doc/
/usr/share/doc/xmonad/
/usr/share/doc/xmonad/LICENSE
/usr/share/haskell/
/usr/share/haskell/register/
/usr/share/haskell/register/xmonad.sh
/usr/share/haskell/unregister/
/usr/share/haskell/unregister/xmonad.sh
/usr/share/licenses/
/usr/share/licenses/xmonad/
/usr/share/licenses/xmonad/LICENSE
/usr/share/man/
/usr/share/man/man1/
/usr/share/man/man1/xmonad.1.gz
/usr/share/pixmaps/
/usr/share/pixmaps/xmonad.svg
/usr/share/xsessions/
/usr/share/xsessions/xmonad.desktop
```
