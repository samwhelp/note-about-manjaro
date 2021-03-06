---
title: Download ISO
nav_order: 7010
has_children: false
parent: 下載
grand_parent: 入門
---



# Download ISO

## Edition

* [Official](https://manjaro.org/download/)
* [Community](https://manjaro.org/download/#Community)


## Official

| Flavour | ISO (Full) | ISO (Minimal) |
| --- | --- | --- |
| [Xfce](https://manjaro.org/downloads/official/xfce/) | [21.2.5](https://download.manjaro.org/xfce/21.2.5/manjaro-xfce-21.2.5-220314-linux515.iso) | [21.2.5](https://download.manjaro.org/xfce/21.2.5/manjaro-xfce-21.2.5-minimal-220314-linux515.iso) |
| [GNOME](https://manjaro.org/downloads/official/gnome/) | [21.2.5](https://download.manjaro.org/gnome/21.2.5/manjaro-gnome-21.2.5-220314-linux515.iso) | [21.2.5](https://download.manjaro.org/gnome/21.2.5/manjaro-gnome-21.2.5-minimal-220314-linux515.iso) |
| [KDE](https://manjaro.org/downloads/official/kde/) | [21.2.5](https://download.manjaro.org/kde/21.2.5/manjaro-kde-21.2.5-220314-linux515.iso) | [21.2.5](https://download.manjaro.org/kde/21.2.5/manjaro-kde-21.2.5-minimal-220314-linux515.iso) |


## Community

| Flavour | ISO (Full) | ISO (Minimal) |
| --- | --- | --- |
| [Openbox](https://manjaro.org/downloads/community/openbox/) | [21.2.5](https://download.manjaro.org/openbox/21.2.5/manjaro-openbox-21.2.5-220316-linux515.iso) |  |
| [I3](https://manjaro.org/downloads/community/i3/) | [21.2.5](https://download.manjaro.org/i3/21.2.5/manjaro-i3-21.2.5-220314-linux515.iso) | [21.2.5](https://download.manjaro.org/i3/21.2.5/manjaro-i3-21.2.5-minimal-220314-linux515.iso) |
| [Mate](https://manjaro.org/downloads/community/mate/) | [21.2.5](https://download.manjaro.org/mate/21.2.5/manjaro-mate-21.2.5-220314-linux515.iso) | [21.2.5](https://download.manjaro.org/mate/21.2.5/manjaro-mate-21.2.5-minimal-220314-linux515.iso) |
| [Cinnamon](https://manjaro.org/downloads/community/cinnamon/) | [21.2.5](https://download.manjaro.org/cinnamon/21.2.5/manjaro-cinnamon-21.2.5-220314-linux515.iso) | [21.2.5](https://download.manjaro.org/cinnamon/21.2.5/manjaro-cinnamon-21.2.5-minimal-220314-linux515.iso) |
| [Budgie](https://manjaro.org/downloads/community/budgie/) | [21.2.5](https://download.manjaro.org/budgie/21.2.5/manjaro-budgie-21.2.5-220314-linux515.iso) | [21.2.5](https://download.manjaro.org/budgie/21.2.5/manjaro-budgie-21.2.5-minimal-220314-linux515.iso)
| [LXDE](https://manjaro.org/downloads/community/lxde/) | [21.2.5](https://download.manjaro.org/lxde/21.2.5/manjaro-lxde-21.2.5-220316-linux515.iso) |  |
| [LXQT](https://manjaro.org/downloads/community/lxqt/) | [21.2.5](https://download.manjaro.org/lxqt/21.2.5/manjaro-lxqt-21.2.5-220316-linux515.iso) |  |
| [LXQT-KWIN](https://manjaro.org/downloads/community/lxqt-kwin/) | [21.2.5](https://download.manjaro.org/lxqt-kwin/21.2.5/manjaro-lxqt-kwin-21.2.5-220316-linux515.iso) |  |
| [Deepin](https://manjaro.org/downloads/community/deepin/) | [21.1.2](https://download.manjaro.org/deepin/21.1.2/manjaro-deepin-21.1.2-210907-linux513.iso) | [21.1.2](https://download.manjaro.org/deepin/21.1.2/manjaro-deepin-21.1.2-minimal-210907-linux513.iso) |
| [Sway Daily](https://manjaro-sway.download/) |  |  |
| [Cutefish](https://github.com/manjaro-cutefish/download/releases) |  |  |


## 下載腳本

* [下載腳本](https://github.com/samwhelp/note-about-grub/tree/gh-pages/_demo/prototype/boot_iso/demo_41_custom/Manjaro/latest/iso)

### iso-download.txt

```
https://download.manjaro.org/xfce/21.2.5/manjaro-xfce-21.2.5-220314-linux515.iso
https://download.manjaro.org/gnome/21.2.5/manjaro-gnome-21.2.5-220314-linux515.iso
https://download.manjaro.org/kde/21.2.5/manjaro-kde-21.2.5-220314-linux515.iso
https://download.manjaro.org/openbox/21.2.5/manjaro-openbox-21.2.5-220316-linux515.iso
https://download.manjaro.org/i3/21.2.5/manjaro-i3-21.2.5-220314-linux515.iso
https://download.manjaro.org/mate/21.2.5/manjaro-mate-21.2.5-220314-linux515.iso
https://download.manjaro.org/cinnamon/21.2.5/manjaro-cinnamon-21.2.5-220314-linux515.iso
https://download.manjaro.org/budgie/21.2.5/manjaro-budgie-21.2.5-220314-linux515.iso
https://download.manjaro.org/lxde/21.2.5/manjaro-lxde-21.2.5-220316-linux515.iso
https://download.manjaro.org/lxqt/21.2.5/manjaro-lxqt-21.2.5-220316-linux515.iso
https://download.manjaro.org/lxqt-kwin/21.2.5/manjaro-lxqt-kwin-21.2.5-220316-linux515.iso
https://download.manjaro.org/deepin/21.1.2/manjaro-deepin-21.1.2-210907-linux513.iso
```

### iso-download.sh

``` sh
wget -c -i iso-download.txt
```


## Link

* Manjaro / Wiki / [Get Manjaro](https://wiki.manjaro.org/index.php/Main_Page#Get_Manjaro)
* Manjaro / Wiki / Burn an ISO File / [Writing to a USB Stick in Linux](https://wiki.manjaro.org/index.php/Burn_an_ISO_File#Writing_to_a_USB_Stick_in_Linux)
