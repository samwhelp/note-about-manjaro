---
title: grub2-theme-preview
nav_order: 6099
has_children: false
parent: 工具微調
grand_parent: 微調
---


# grub2-theme-preview

## Link

* Hartwork Blog / [Tool to preview Grub2 themes easily (using KVM)](https://blog.hartwork.org/posts/tool-to-preview-grub2-themes-using-kvm/)
* GitHub / [grub2-theme-preview](https://github.com/hartwork/grub2-theme-preview)
* AUR / [grub2-theme-preview](https://aur.archlinux.org/packages/grub2-theme-preview)


## 探索

執行

``` sh
pamac search grub2-theme-preview -a
```

顯示

```
grub2-theme-preview                                                2.3.0-2  AUR
    Preview a full GRUB 2.x theme (or just a background image)
    using KVM/QEMU
```

## 資訊

執行

``` sh
pamac info grub2-theme-preview -a
```

顯示

```
Name                  : grub2-theme-preview
Version               : 2.3.0-2
Description           : Preview a full GRUB 2.x theme (or just a background
                        image) using KVM/QEMU
URL                   : https://github.com/hartwork/grub2-theme-preview
Licenses              : GPL
Repository            : AUR
Depends On            : grub qemu mtools python python-setuptools libisoburn
                        edk2-ovmf
Make Dependencies     : git
Maintainer            : American_Jesus
First Submitted       : 12/31/2016
Last Modified         : 03/17/2021
Votes                 : 14
```

## 安裝

執行

``` sh
pamac build grub2-theme-preview
```


## 執行範例

假設已經安裝「[Dracula](https://github.com/zshzero/dracula-grub2/)」這個「[GRUB佈景主題](https://samwhelp.github.io/note-about-grub/read/howto/use_theme.html)」，

放在「/boot/grub/themes/dracula」這個路徑。

執行下面指令來預覽

```
grub2-theme-preview /boot/grub/themes/dracula
```
