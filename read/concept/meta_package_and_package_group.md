---
title: Meta_Package and Package_Group
nav_order: 1001
has_children: false
parent: 概念
---

# Meta_Package and Package_Group


## 入門閱讀

* [Meta package and package group](https://wiki.archlinux.org/index.php/Meta_package_and_package_group)


## 範例

| Meta package | Package group |
| --- | --- |
| [base](https://archlinux.org/packages/core/any/base/) | [base-devel](https://archlinux.org/groups/x86_64/base-devel/) |


* [List of all package groups](https://archlinux.org/groups/)


## 指令範例


執行

``` sh
sudo pacman -S base-devel
```

顯示

```
:: There are 24 members in group base-devel:
:: Repository core
   1) autoconf  2) automake  3) binutils  4) bison  5) fakeroot  6) file  7) findutils  8) flex  9) gawk  10) gcc  11) gettext  12) grep
   13) groff  14) gzip  15) libtool  16) m4  17) make  18) pacman  19) patch  20) pkgconf  21) sed  22) sudo  23) texinfo  24) which

Enter a selection (default=all):
```

執行

```
pamac install base-devel
```

顯示

```
There are 24 members in group base-devel:
 1:  autoconf   2.71-1                 core
 2:  automake   1.16.3-1               core
 3:  binutils   2.36.1-2               core
 4:  bison      3.7.3-1                core
 5:  fakeroot   1.25.3-2               core
 6:  file       5.39-1                 core
 7:  findutils  4.8.0-1                core
 8:  flex       2.6.4-3                core
 9:  gawk       5.1.0-1                core
10:  gcc        10.2.0-6               core
11:  gettext    0.21-1                 core
12:  grep       3.6-1                  core
13:  groff      1.22.4-4               core
14:  gzip       1.10-3                 core
15:  libtool    2.4.6+42+gb88cebd5-14  core
16:  m4         1.4.18-3               core
17:  make       4.3-3                  core
18:  pacman     5.2.2-4                core
19:  patch      2.7.6-8                core
20:  pkgconf    1.7.3-1                core
21:  sed        4.8-1                  core
22:  sudo       1.9.6.p1-1             core
23:  texinfo    6.7-3                  core
24:  which      2.21-5                 core

Enter a selection (default=all):
```
