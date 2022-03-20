---
title: 套件管理
nav_order: 10
has_children: false
parent: 入門
---


# 套件管理


## 入門閱讀

* [Pacman Overview](https://wiki.manjaro.org/index.php/Pacman_Overview)
* Pamac / [Using the Pamac CLI](https://wiki.manjaro.org/index.php/Pamac#Using_the_Pamac_CLI)


## Package / pamac

* [https://gitlab.manjaro.org/packages/extra/pamac](https://gitlab.manjaro.org/packages/extra/pamac)
* [https://gitlab.manjaro.org/applications/pamac](https://gitlab.manjaro.org/applications/pamac)


## Link

* [https://gitlab.manjaro.org/explore/groups](https://gitlab.manjaro.org/explore/groups)
* [https://gitlab.manjaro.org/packages](https://gitlab.manjaro.org/packages)


## Packages

* Manjaro / [Discover Software](https://discover.manjaro.org/)
* Arch / [Packages](https://archlinux.org/packages/)
* Arch / [AUR](https://aur.archlinux.org/)


## Wiki

* Arch Wiki / [List of applications](https://wiki.archlinux.org/index.php/List_of_applications)
* Manjaro Wiki / [List of Qt Applications](https://wiki.manjaro.org/index.php/List_of_Qt_Applications)


## 使用情境範例

* [查詢檔案屬於那個套件](#查詢檔案屬於那個套件)
* [查詢套件安裝那些檔案](#查詢套件安裝那些檔案)


## 查詢檔案屬於那個套件

執行下面指令，查詢「/usr/share/icons/Papirus」這個檔案，是屬於那個套件。

``` sh
pacman -Qo /usr/share/icons/Papirus
```

顯示

```
/usr/share/icons/Papirus/ is owned by papirus-icon-theme 20210901-1
```

也可以加上「-q」，也就是執行下面指令

``` sh
pacman -Qo /usr/share/icons/Papirus -q
```

顯示

```
papirus-icon-theme
```


## 查詢套件安裝那些檔案

執行下面指令，查詢「papirus-icon-theme」這個套件，安裝那些檔案在系統上。

``` sh
pacman -Ql papirus-icon-theme
```

顯示

```
papirus-icon-theme /usr/
papirus-icon-theme /usr/share/
papirus-icon-theme /usr/share/icons/
papirus-icon-theme /usr/share/icons/Papirus-Dark/
papirus-icon-theme /usr/share/icons/Papirus-Dark/128x128
papirus-icon-theme /usr/share/icons/Papirus-Dark/16x16/
papirus-icon-theme /usr/share/icons/Papirus-Dark/16x16/actions/
papirus-icon-theme /usr/share/icons/Papirus-Dark/16x16/actions/Finished.svg
papirus-icon-theme /usr/share/icons/Papirus-Dark/16x16/actions/Info-amarok.svg
papirus-icon-theme /usr/share/icons/Papirus-Dark/16x16/actions/SuggestionError.svg
...
```

顯示的格式是「套件名稱 檔案路徑」，

若不要顯示「套件名稱」，則是執行下面指令，後面多加一個「-q」

``` sh
pacman -Ql papirus-icon-theme -q
```

顯示

```
/usr/
/usr/share/
/usr/share/icons/
/usr/share/icons/Papirus-Dark/
/usr/share/icons/Papirus-Dark/128x128
/usr/share/icons/Papirus-Dark/16x16/
/usr/share/icons/Papirus-Dark/16x16/actions/
/usr/share/icons/Papirus-Dark/16x16/actions/Finished.svg
/usr/share/icons/Papirus-Dark/16x16/actions/Info-amarok.svg
/usr/share/icons/Papirus-Dark/16x16/actions/SuggestionError.svg
...
```

另外查詢的時候，也可以不加上「套件」，就會列出系統所有安裝的檔案

```
pacman -Ql
```

一樣可以加上「-q」

```
pacman -Ql -q
```

也可以搭配「分頁程式」

``` sh
pacman -Ql | less
```

``` sh
pacman -Ql -q | less
```

``` sh
pacman -Ql | bat
```

``` sh
pacman -Ql -q | bat
```
