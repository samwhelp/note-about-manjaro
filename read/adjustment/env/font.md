---
title: 字型的安裝與設定
nav_order: 5003
has_children: false
parent: 系統環境微調
grand_parent: 微調
---


# 字型的安裝與設定

* [設定腳本](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/env/font-setting/font-match-order)


| 字型 |
| --- |
| [noto](#noto) |
| [liberation](#liberation) |


## noto

### 查詢

執行

``` sh
pamac search noto
```

顯示

```
libpano13                                                                                                                   2.9.19-5    community
   Basic library to calculate panoramical pictures - core functions of the panotools
haskell-clock                                                                                                               0.8.2-27    community
   High-resolution clock functions: monotonic, realtime, cputime.
python-monotonic                                                                                                            1.5-7       community
   An implementation of time.monotonic() for Python
nerd-fonts-noto-sans-mono                                                                                                   2.0.0-1     community
   Standard variants of Noto Sans Mono patched with Nerd Fonts.
innotop                                                                                                                     1.11.4-5    community
   A powerful "top" clone for MySQL (MariaDB)
noto-fonts-extra                                                                                                            20201226-1  extra
   Google Noto TTF fonts - additional variants
noto-fonts-emoji                                                                                                            20200916-1  extra
   Google Noto emoji fonts
noto-fonts-compat                                                                                                           20151217-1  community
   Google Noto TTF fonts (compat-package)
noto-fonts-cjk                                                                                                              20201206-1  extra
   Google Noto CJK fonts
noto-fonts                                                                                                      [Installed] 20201226-1  extra
   Google Noto TTF fonts
```

### 安裝


執行

``` sh
pamac install noto-fonts-cjk
```


## liberation


### 查詢

執行

``` sh
$ pamac search liberation
```

顯示

```
ttf-liberation                                   [Installed] 2.1.3-1  community
    Font family which aims at metric compatibility with
    Arial, Times New Roman, and Courier New
```

### 安裝


執行

``` sh
pamac install ttf-liberation
```


## nerd-fonts / liberation (Literation Mono Nerd Font)


* https://github.com/ryanoasis/nerd-fonts
* https://github.com/ryanoasis/nerd-fonts/releases
* https://github.com/ryanoasis/nerd-fonts/releases/tag/v2.1.0
* https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/LiberationMono.zip


``` sh
wget -c 'https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/LiberationMono.zip'
mkdir -p LiberationMono
unzip -d LiberationMono LiberationMono.zip

cd LiberationMono
mkdir -p ~/.local/share/fonts
cp *.ttf ~/.local/share/fonts
```
