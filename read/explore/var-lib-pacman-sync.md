---
title: /var/lib/pacman/sync/
nav_order: 7010
has_children: false
parent: 探索
---


# /var/lib/pacman/sync/

## 相關

* [pacman-mirrors](https://samwhelp.github.io/note-about-manjaro/read/adjustment/env/pacman-mirrors.html)

## 初探 /var/lib/pacman/sync/

### 實驗一

執行下面指令測試

``` sh
sudo pacman -Sy
```

顯示

```
:: Synchronizing package databases...
```

執行下面指令，觀看下面的資料夾

``` sh
ls /var/lib/pacman/sync/ -1
```

顯示

```
community.db
community.files
core.db
core.files
extra.db
extra.files
mhwd.db
multilib.db
multilib.files
refresh_timestamp
```

## 初探 Official repositories

以「[http://free.nchc.org.tw/manjaro/stable/](http://free.nchc.org.tw/manjaro/stable/)」為例

可以找到如下的網址

```
http://free.nchc.org.tw/manjaro/stable/state

http://free.nchc.org.tw/manjaro/stable/core/x86_64/core.db
http://free.nchc.org.tw/manjaro/stable/core/x86_64/core.db.tar.gz
http://free.nchc.org.tw/manjaro/stable/core/x86_64/core.files
http://free.nchc.org.tw/manjaro/stable/core/x86_64/core.files.tar.gz


http://free.nchc.org.tw/manjaro/stable/extra/x86_64/extra.db
http://free.nchc.org.tw/manjaro/stable/extra/x86_64/extra.db.tar.gz
http://free.nchc.org.tw/manjaro/stable/extra/x86_64/extra.files
http://free.nchc.org.tw/manjaro/stable/extra/x86_64/extra.files.tar.gz


http://free.nchc.org.tw/manjaro/stable/community/x86_64/community.db
http://free.nchc.org.tw/manjaro/stable/community/x86_64/community.db.tar.gz
http://free.nchc.org.tw/manjaro/stable/community/x86_64/community.files
http://free.nchc.org.tw/manjaro/stable/community/x86_64/community.files.tar.gz


http://free.nchc.org.tw/manjaro/stable/multilib/x86_64/multilib.db
http://free.nchc.org.tw/manjaro/stable/multilib/x86_64/multilib.db.tar.gz
http://free.nchc.org.tw/manjaro/stable/multilib/x86_64/multilib.files
http://free.nchc.org.tw/manjaro/stable/multilib/x86_64/multilib.files.tar.gz
```

### 實驗二

執行下面指令，下載

``` sh
wget -c 'http://free.nchc.org.tw/manjaro/stable/state'
```

執行下面指令，觀看「state」的內容

``` sh
cat state
```

顯示

```
###
### BoxIt branch state file
###

# Unique hash code representing current branch state.
# This hash code changes as soon as anything changes in this branch.
state=3269048b417f2055251ca87694d77a1a42300e10

# Date and time of the last branch change.
```

### 實驗三

執行下面指令，產生「dl.txt」，或是參考另一個「[腳本](https://github.com/samwhelp/note-about-manjaro/blob/gh-pages/_demo/explore/pacman/repo-create-list/list.sh)」產生。

``` sh

cat > dl.txt <<EOF

http://free.nchc.org.tw/manjaro/stable/core/x86_64/core.db
http://free.nchc.org.tw/manjaro/stable/core/x86_64/core.db.tar.gz
http://free.nchc.org.tw/manjaro/stable/core/x86_64/core.files
http://free.nchc.org.tw/manjaro/stable/core/x86_64/core.files.tar.gz


http://free.nchc.org.tw/manjaro/stable/extra/x86_64/extra.db
http://free.nchc.org.tw/manjaro/stable/extra/x86_64/extra.db.tar.gz
http://free.nchc.org.tw/manjaro/stable/extra/x86_64/extra.files
http://free.nchc.org.tw/manjaro/stable/extra/x86_64/extra.files.tar.gz


http://free.nchc.org.tw/manjaro/stable/community/x86_64/community.db
http://free.nchc.org.tw/manjaro/stable/community/x86_64/community.db.tar.gz
http://free.nchc.org.tw/manjaro/stable/community/x86_64/community.files
http://free.nchc.org.tw/manjaro/stable/community/x86_64/community.files.tar.gz


http://free.nchc.org.tw/manjaro/stable/multilib/x86_64/multilib.db
http://free.nchc.org.tw/manjaro/stable/multilib/x86_64/multilib.db.tar.gz
http://free.nchc.org.tw/manjaro/stable/multilib/x86_64/multilib.files
http://free.nchc.org.tw/manjaro/stable/multilib/x86_64/multilib.files.tar.gz

EOF
```

執行下面指令，下載

``` sh
wget -c -i dl.txt
```

#### file

執行

``` sh
file /var/lib/pacman/sync/core.db
```

顯示

```
/var/lib/pacman/sync/core.db: gzip compressed data, last modified: Wed May 19 13:32:47 2021, from Unix, original size modulo 2^32 1131520
```

執行

``` sh
file ./core.db
```

顯示

```
./core.db: gzip compressed data, last modified: Wed May 19 13:32:47 2021, from Unix, original size modulo 2^32 1131520
```

執行

``` sh
file ./core.db.tar.gz
```

顯示

```
./core.db.tar.gz: gzip compressed data, last modified: Wed May 19 13:32:47 2021, from Unix, original size modulo 2^32 1131520
```

#### md5sum

執行

``` sh
md5sum /var/lib/pacman/sync/core.db
```

顯示

```
4e6a0eb0e0830f391962ff3789336fff  /var/lib/pacman/sync/core.db
```

執行

``` sh
md5sum ./core.db
```

顯示

```
4e6a0eb0e0830f391962ff3789336fff  ./core.db
```

執行

``` sh
md5sum ./core.db.tar.gz
```

顯示

```
4e6a0eb0e0830f391962ff3789336fff  ./core.db.tar.gz
```

可以了解到「/var/lib/pacman/sync/core.db」，「./core.db」，「./core.db.tar.gz」

這三個檔案是一樣的。

#### 觀看內容

執行

``` sh
tar tf core.db
```

stderr 會顯示下面的字樣

```
tar: Ignoring unknown extended header keyword 'SCHILY.fflags'
```

所以改執行下面指令

``` sh
tar tf core.db 2> /dev/null
```

顯示

```
acl-2.3.1-1/
acl-2.3.1-1/desc
amd-ucode-20210511.r1922.7685cf4-1/
amd-ucode-20210511.r1922.7685cf4-1/desc
archlinux-keyring-20210110-1/
archlinux-keyring-20210110-1/desc
argon2-20190702-3/
argon2-20190702-3/desc
attr-2.5.1-1/
attr-2.5.1-1/desc
audit-3.0.1-1/
audit-3.0.1-1/desc
autoconf-2.71-1/
autoconf-2.71-1/desc
automake-1.16.3-1/
automake-1.16.3-1/desc
b43-fwcutter-019-3/
b43-fwcutter-019-3/desc
base-2-2/
base-2-2/desc
bash-5.1.008-1/
bash-5.1.008-1/desc
bashrc-manjaro-5.1.008-1/
bashrc-manjaro-5.1.008-1/desc
binutils-2.36.1-2/
binutils-2.36.1-2/desc
...略...
```

因為上面列表很長，所以改執行下面指令，分頁觀看

``` sh
tar tf core.db 2> /dev/null | less
```

#### bsdtar

後來在「Arch Wiki / [Pacman](https://wiki.archlinux.org/title/Pacman)」發現，

要採用「bsdtar」來觀看，就不會出現那個錯誤訊息

``` sh
bsdtar tf core.db
```

#### 解開 「core.db」

執行下面指令，先產生一個資料夾「core」

``` sh
mkdir -p core
```

執行下面指令，解開「core.db」

``` sh
tar -C core -xf core.db
```

或是執行下面指令，解開「core.db」

``` sh
tar -C core -xf core.db 2> /dev/null
```

或是執行下面指令，解開「core.db」

``` sh
bsdtar -C core -xf core.db
```

解開後，可以執行下面指令，觀看「core」的資料夾

``` sh
ls core -1 | less
```

或是執行下面指令，觀看「core」的資料夾結構

``` sh
tree core | less
```

執行下面指令，觀看「core/coreutils-8.32-1/desc」的內容

``` sh
cat core/coreutils-8.32-1/desc
```

顯示

```
%FILENAME%
coreutils-8.32-1-x86_64.pkg.tar.zst

%NAME%
coreutils

%BASE%
coreutils

%VERSION%
8.32-1

%DESC%
The basic file, shell and text manipulation utilities of the GNU operating system

%CSIZE%
2799785

%ISIZE%
16765236

%MD5SUM%
451f6766ad2c0b84dc43466fcb2146b7

%SHA256SUM%
0230569b2c108996865033bfc63ea60dbb21388592d2376384f4a009a1ee91fd

%PGPSIG%
iQIrBAABCgAdFiEEVyJOyaX8pvvJK7iqShr8NF6+GPgFAl5iS40ACgkQShr8NF6+GPjeGg+/SNBUJek50lMbiQEW+F90p35f1q88WoYhDa5rmFetDCtYThG83ur8RCvGkMXsPaWRBh7wZ4icPNcfrwoSTHz/LmKN6du0sC0aS9LzlPhIz9bg1mynLYmxoonty6gKOfG42R3kzU9DYZRi91Bj1Hg3zxydP+9RkNumf2xwbxmKNBJArdRNyIt2o4mW2oeD7/GScixzHm0TmpU4u62eJEUeMoT/yDBzGczBBGldDI9xr5vG1DirvH4gmWMLr/7bkzfC8qPpJEaFKNF1Y21Im3OieENGm7Vzjt4EU2nEN8wFWDFM8Pl8BTP5I16gt84OE2J8xBklq6HuAf6vSxLjRVK45PA1w3ayCi6gwFgAZj7AKdg/RMpAF1UHP/xqFlL3lSXK8KR20OoUT2LyozOdpdfIcgy2sbkikI3C3ZFMgsxaUuQzKV3AprD/shlh+UPNUykEIvYqYLGlYaAECu4uJsT/n+xuIzBNr3wX8RH9tPlb7vovlfGMwZFI/ZwoLhaY1uSbnqc4wbwAAcNAnBeU3vftibfaLdLcHTMeTVA9E7r8qrpk044yYUrT+vQugcacO/yEbuGFBsD5XIgMGhNza72IZ+IIF/uWXNy7IJ1lcspsHtWUJd3Fmc/0lLLil2MJy8h5OXnBwYB/bfxId5YybR7ZtT4KowqAR5QC

%URL%
https://www.gnu.org/software/coreutils/

%LICENSE%
GPL3

%ARCH%
x86_64

%BUILDDATE%
1583499672

%PACKAGER%
Sébastien Luttringer <seblu@seblu.net>

%DEPENDS%
glibc
acl
attr
gmp
libcap
openssl
```

#### 解開 「core.files」

執行下面指令，先產生一個資料夾「core_files」

``` sh
mkdir -p core_files
```

執行下面指令，解開「core.files」

``` sh
tar -C core_files -xf core.files 2> /dev/null
```

或是執行下面指令，解開「core.files」

``` sh
bsdtar -C core_files -xf core.files
```

執行下面指令，

```
ls core/coreutils-8.32-1/ -1
```

顯示

```
desc
```

執行下面指令，

```
ls core_files/coreutils-8.32-1/ -1
```

顯示

```
desc
files
```

多了個檔案「files」

執行下面指令，觀看「core_files/coreutils-8.32-1/files」的內容

``` sh
cat core_files/coreutils-8.32-1/files
```

顯示

```
%FILES%
usr/
usr/bin/
usr/bin/[
usr/bin/b2sum
usr/bin/base32
usr/bin/base64
usr/bin/basename
usr/bin/basenc
usr/bin/cat
usr/bin/chcon
usr/bin/chgrp
usr/bin/chmod
usr/bin/chown
usr/bin/chroot
usr/bin/cksum
usr/bin/comm
usr/bin/cp
usr/bin/csplit
usr/bin/cut
usr/bin/date
usr/bin/dd
usr/bin/df
usr/bin/dir
usr/bin/dircolors
usr/bin/dirname
usr/bin/du
usr/bin/echo
usr/bin/env
usr/bin/expand
usr/bin/expr
usr/bin/factor
usr/bin/false
usr/bin/fmt
usr/bin/fold
usr/bin/head
usr/bin/hostid
usr/bin/id
usr/bin/install
usr/bin/join
usr/bin/link
usr/bin/ln
usr/bin/logname
usr/bin/ls
usr/bin/md5sum
usr/bin/mkdir
usr/bin/mkfifo
usr/bin/mknod
usr/bin/mktemp
usr/bin/mv
usr/bin/nice
usr/bin/nl
usr/bin/nohup
usr/bin/nproc
usr/bin/numfmt
usr/bin/od
usr/bin/paste
usr/bin/pathchk
usr/bin/pinky
usr/bin/pr
usr/bin/printenv
usr/bin/printf
usr/bin/ptx
usr/bin/pwd
usr/bin/readlink
usr/bin/realpath
usr/bin/rm
usr/bin/rmdir
usr/bin/runcon
usr/bin/seq
usr/bin/sha1sum
usr/bin/sha224sum
usr/bin/sha256sum
usr/bin/sha384sum
usr/bin/sha512sum
usr/bin/shred
usr/bin/shuf
usr/bin/sleep
usr/bin/sort
usr/bin/split
usr/bin/stat
usr/bin/stdbuf
usr/bin/stty
usr/bin/sum
usr/bin/sync
usr/bin/tac
usr/bin/tail
usr/bin/tee
usr/bin/test
usr/bin/timeout
usr/bin/touch
usr/bin/tr
usr/bin/true
usr/bin/truncate
usr/bin/tsort
usr/bin/tty
usr/bin/uname
usr/bin/unexpand
usr/bin/uniq
usr/bin/unlink
usr/bin/users
usr/bin/vdir
usr/bin/wc
usr/bin/who
usr/bin/whoami
usr/bin/yes
usr/lib/
usr/lib/coreutils/
usr/lib/coreutils/libstdbuf.so
usr/share/
usr/share/info/
usr/share/info/coreutils.info.gz
usr/share/locale/
usr/share/locale/af/
usr/share/locale/af/LC_MESSAGES/
usr/share/locale/af/LC_MESSAGES/coreutils.mo
usr/share/locale/af/LC_TIME/
usr/share/locale/af/LC_TIME/coreutils.mo
usr/share/locale/be/
usr/share/locale/be/LC_MESSAGES/
usr/share/locale/be/LC_MESSAGES/coreutils.mo
usr/share/locale/be/LC_TIME/
usr/share/locale/be/LC_TIME/coreutils.mo
usr/share/locale/bg/
usr/share/locale/bg/LC_MESSAGES/
usr/share/locale/bg/LC_MESSAGES/coreutils.mo
usr/share/locale/bg/LC_TIME/
usr/share/locale/bg/LC_TIME/coreutils.mo
usr/share/locale/ca/
usr/share/locale/ca/LC_MESSAGES/
usr/share/locale/ca/LC_MESSAGES/coreutils.mo
usr/share/locale/ca/LC_TIME/
usr/share/locale/ca/LC_TIME/coreutils.mo
usr/share/locale/cs/
usr/share/locale/cs/LC_MESSAGES/
usr/share/locale/cs/LC_MESSAGES/coreutils.mo
usr/share/locale/cs/LC_TIME/
usr/share/locale/cs/LC_TIME/coreutils.mo
usr/share/locale/da/
usr/share/locale/da/LC_MESSAGES/
usr/share/locale/da/LC_MESSAGES/coreutils.mo
usr/share/locale/da/LC_TIME/
usr/share/locale/da/LC_TIME/coreutils.mo
usr/share/locale/de/
usr/share/locale/de/LC_MESSAGES/
usr/share/locale/de/LC_MESSAGES/coreutils.mo
usr/share/locale/de/LC_TIME/
usr/share/locale/de/LC_TIME/coreutils.mo
usr/share/locale/el/
usr/share/locale/el/LC_MESSAGES/
usr/share/locale/el/LC_MESSAGES/coreutils.mo
usr/share/locale/el/LC_TIME/
usr/share/locale/el/LC_TIME/coreutils.mo
usr/share/locale/eo/
usr/share/locale/eo/LC_MESSAGES/
usr/share/locale/eo/LC_MESSAGES/coreutils.mo
usr/share/locale/eo/LC_TIME/
usr/share/locale/eo/LC_TIME/coreutils.mo
usr/share/locale/es/
usr/share/locale/es/LC_MESSAGES/
usr/share/locale/es/LC_MESSAGES/coreutils.mo
usr/share/locale/es/LC_TIME/
usr/share/locale/es/LC_TIME/coreutils.mo
usr/share/locale/et/
usr/share/locale/et/LC_MESSAGES/
usr/share/locale/et/LC_MESSAGES/coreutils.mo
usr/share/locale/et/LC_TIME/
usr/share/locale/et/LC_TIME/coreutils.mo
usr/share/locale/eu/
usr/share/locale/eu/LC_MESSAGES/
usr/share/locale/eu/LC_MESSAGES/coreutils.mo
usr/share/locale/eu/LC_TIME/
usr/share/locale/eu/LC_TIME/coreutils.mo
usr/share/locale/fi/
usr/share/locale/fi/LC_MESSAGES/
usr/share/locale/fi/LC_MESSAGES/coreutils.mo
usr/share/locale/fi/LC_TIME/
usr/share/locale/fi/LC_TIME/coreutils.mo
usr/share/locale/fr/
usr/share/locale/fr/LC_MESSAGES/
usr/share/locale/fr/LC_MESSAGES/coreutils.mo
usr/share/locale/fr/LC_TIME/
usr/share/locale/fr/LC_TIME/coreutils.mo
usr/share/locale/ga/
usr/share/locale/ga/LC_MESSAGES/
usr/share/locale/ga/LC_MESSAGES/coreutils.mo
usr/share/locale/ga/LC_TIME/
usr/share/locale/ga/LC_TIME/coreutils.mo
usr/share/locale/gl/
usr/share/locale/gl/LC_MESSAGES/
usr/share/locale/gl/LC_MESSAGES/coreutils.mo
usr/share/locale/gl/LC_TIME/
usr/share/locale/gl/LC_TIME/coreutils.mo
usr/share/locale/hr/
usr/share/locale/hr/LC_MESSAGES/
usr/share/locale/hr/LC_MESSAGES/coreutils.mo
usr/share/locale/hr/LC_TIME/
usr/share/locale/hr/LC_TIME/coreutils.mo
usr/share/locale/hu/
usr/share/locale/hu/LC_MESSAGES/
usr/share/locale/hu/LC_MESSAGES/coreutils.mo
usr/share/locale/hu/LC_TIME/
usr/share/locale/hu/LC_TIME/coreutils.mo
usr/share/locale/ia/
usr/share/locale/ia/LC_MESSAGES/
usr/share/locale/ia/LC_MESSAGES/coreutils.mo
usr/share/locale/ia/LC_TIME/
usr/share/locale/ia/LC_TIME/coreutils.mo
usr/share/locale/id/
usr/share/locale/id/LC_MESSAGES/
usr/share/locale/id/LC_MESSAGES/coreutils.mo
usr/share/locale/id/LC_TIME/
usr/share/locale/id/LC_TIME/coreutils.mo
usr/share/locale/it/
usr/share/locale/it/LC_MESSAGES/
usr/share/locale/it/LC_MESSAGES/coreutils.mo
usr/share/locale/it/LC_TIME/
usr/share/locale/it/LC_TIME/coreutils.mo
usr/share/locale/ja/
usr/share/locale/ja/LC_MESSAGES/
usr/share/locale/ja/LC_MESSAGES/coreutils.mo
usr/share/locale/ja/LC_TIME/
usr/share/locale/ja/LC_TIME/coreutils.mo
usr/share/locale/kk/
usr/share/locale/kk/LC_MESSAGES/
usr/share/locale/kk/LC_MESSAGES/coreutils.mo
usr/share/locale/kk/LC_TIME/
usr/share/locale/kk/LC_TIME/coreutils.mo
usr/share/locale/ko/
usr/share/locale/ko/LC_MESSAGES/
usr/share/locale/ko/LC_MESSAGES/coreutils.mo
usr/share/locale/ko/LC_TIME/
usr/share/locale/ko/LC_TIME/coreutils.mo
usr/share/locale/lg/
usr/share/locale/lg/LC_MESSAGES/
usr/share/locale/lg/LC_MESSAGES/coreutils.mo
usr/share/locale/lg/LC_TIME/
usr/share/locale/lg/LC_TIME/coreutils.mo
usr/share/locale/lt/
usr/share/locale/lt/LC_MESSAGES/
usr/share/locale/lt/LC_MESSAGES/coreutils.mo
usr/share/locale/lt/LC_TIME/
usr/share/locale/lt/LC_TIME/coreutils.mo
usr/share/locale/ms/
usr/share/locale/ms/LC_MESSAGES/
usr/share/locale/ms/LC_MESSAGES/coreutils.mo
usr/share/locale/ms/LC_TIME/
usr/share/locale/ms/LC_TIME/coreutils.mo
usr/share/locale/nb/
usr/share/locale/nb/LC_MESSAGES/
usr/share/locale/nb/LC_MESSAGES/coreutils.mo
usr/share/locale/nb/LC_TIME/
usr/share/locale/nb/LC_TIME/coreutils.mo
usr/share/locale/nl/
usr/share/locale/nl/LC_MESSAGES/
usr/share/locale/nl/LC_MESSAGES/coreutils.mo
usr/share/locale/nl/LC_TIME/
usr/share/locale/nl/LC_TIME/coreutils.mo
usr/share/locale/pl/
usr/share/locale/pl/LC_MESSAGES/
usr/share/locale/pl/LC_MESSAGES/coreutils.mo
usr/share/locale/pl/LC_TIME/
usr/share/locale/pl/LC_TIME/coreutils.mo
usr/share/locale/pt/
usr/share/locale/pt/LC_MESSAGES/
usr/share/locale/pt/LC_MESSAGES/coreutils.mo
usr/share/locale/pt/LC_TIME/
usr/share/locale/pt/LC_TIME/coreutils.mo
usr/share/locale/pt_BR/
usr/share/locale/pt_BR/LC_MESSAGES/
usr/share/locale/pt_BR/LC_MESSAGES/coreutils.mo
usr/share/locale/pt_BR/LC_TIME/
usr/share/locale/pt_BR/LC_TIME/coreutils.mo
usr/share/locale/ro/
usr/share/locale/ro/LC_MESSAGES/
usr/share/locale/ro/LC_MESSAGES/coreutils.mo
usr/share/locale/ro/LC_TIME/
usr/share/locale/ro/LC_TIME/coreutils.mo
usr/share/locale/ru/
usr/share/locale/ru/LC_MESSAGES/
usr/share/locale/ru/LC_MESSAGES/coreutils.mo
usr/share/locale/ru/LC_TIME/
usr/share/locale/ru/LC_TIME/coreutils.mo
usr/share/locale/sk/
usr/share/locale/sk/LC_MESSAGES/
usr/share/locale/sk/LC_MESSAGES/coreutils.mo
usr/share/locale/sk/LC_TIME/
usr/share/locale/sk/LC_TIME/coreutils.mo
usr/share/locale/sl/
usr/share/locale/sl/LC_MESSAGES/
usr/share/locale/sl/LC_MESSAGES/coreutils.mo
usr/share/locale/sl/LC_TIME/
usr/share/locale/sl/LC_TIME/coreutils.mo
usr/share/locale/sr/
usr/share/locale/sr/LC_MESSAGES/
usr/share/locale/sr/LC_MESSAGES/coreutils.mo
usr/share/locale/sr/LC_TIME/
usr/share/locale/sr/LC_TIME/coreutils.mo
usr/share/locale/sv/
usr/share/locale/sv/LC_MESSAGES/
usr/share/locale/sv/LC_MESSAGES/coreutils.mo
usr/share/locale/sv/LC_TIME/
usr/share/locale/sv/LC_TIME/coreutils.mo
usr/share/locale/tr/
usr/share/locale/tr/LC_MESSAGES/
usr/share/locale/tr/LC_MESSAGES/coreutils.mo
usr/share/locale/tr/LC_TIME/
usr/share/locale/tr/LC_TIME/coreutils.mo
usr/share/locale/uk/
usr/share/locale/uk/LC_MESSAGES/
usr/share/locale/uk/LC_MESSAGES/coreutils.mo
usr/share/locale/uk/LC_TIME/
usr/share/locale/uk/LC_TIME/coreutils.mo
usr/share/locale/vi/
usr/share/locale/vi/LC_MESSAGES/
usr/share/locale/vi/LC_MESSAGES/coreutils.mo
usr/share/locale/vi/LC_TIME/
usr/share/locale/vi/LC_TIME/coreutils.mo
usr/share/locale/zh_CN/
usr/share/locale/zh_CN/LC_MESSAGES/
usr/share/locale/zh_CN/LC_MESSAGES/coreutils.mo
usr/share/locale/zh_CN/LC_TIME/
usr/share/locale/zh_CN/LC_TIME/coreutils.mo
usr/share/locale/zh_TW/
usr/share/locale/zh_TW/LC_MESSAGES/
usr/share/locale/zh_TW/LC_MESSAGES/coreutils.mo
usr/share/locale/zh_TW/LC_TIME/
usr/share/locale/zh_TW/LC_TIME/coreutils.mo
usr/share/man/
usr/share/man/man1/
usr/share/man/man1/b2sum.1.gz
usr/share/man/man1/base32.1.gz
usr/share/man/man1/base64.1.gz
usr/share/man/man1/basename.1.gz
usr/share/man/man1/basenc.1.gz
usr/share/man/man1/cat.1.gz
usr/share/man/man1/chcon.1.gz
usr/share/man/man1/chgrp.1.gz
usr/share/man/man1/chmod.1.gz
usr/share/man/man1/chown.1.gz
usr/share/man/man1/chroot.1.gz
usr/share/man/man1/cksum.1.gz
usr/share/man/man1/comm.1.gz
usr/share/man/man1/cp.1.gz
usr/share/man/man1/csplit.1.gz
usr/share/man/man1/cut.1.gz
usr/share/man/man1/date.1.gz
usr/share/man/man1/dd.1.gz
usr/share/man/man1/df.1.gz
usr/share/man/man1/dir.1.gz
usr/share/man/man1/dircolors.1.gz
usr/share/man/man1/dirname.1.gz
usr/share/man/man1/du.1.gz
usr/share/man/man1/echo.1.gz
usr/share/man/man1/env.1.gz
usr/share/man/man1/expand.1.gz
usr/share/man/man1/expr.1.gz
usr/share/man/man1/factor.1.gz
usr/share/man/man1/false.1.gz
usr/share/man/man1/fmt.1.gz
usr/share/man/man1/fold.1.gz
usr/share/man/man1/head.1.gz
usr/share/man/man1/hostid.1.gz
usr/share/man/man1/id.1.gz
usr/share/man/man1/install.1.gz
usr/share/man/man1/join.1.gz
usr/share/man/man1/link.1.gz
usr/share/man/man1/ln.1.gz
usr/share/man/man1/logname.1.gz
usr/share/man/man1/ls.1.gz
usr/share/man/man1/md5sum.1.gz
usr/share/man/man1/mkdir.1.gz
usr/share/man/man1/mkfifo.1.gz
usr/share/man/man1/mknod.1.gz
usr/share/man/man1/mktemp.1.gz
usr/share/man/man1/mv.1.gz
usr/share/man/man1/nice.1.gz
usr/share/man/man1/nl.1.gz
usr/share/man/man1/nohup.1.gz
usr/share/man/man1/nproc.1.gz
usr/share/man/man1/numfmt.1.gz
usr/share/man/man1/od.1.gz
usr/share/man/man1/paste.1.gz
usr/share/man/man1/pathchk.1.gz
usr/share/man/man1/pinky.1.gz
usr/share/man/man1/pr.1.gz
usr/share/man/man1/printenv.1.gz
usr/share/man/man1/printf.1.gz
usr/share/man/man1/ptx.1.gz
usr/share/man/man1/pwd.1.gz
usr/share/man/man1/readlink.1.gz
usr/share/man/man1/realpath.1.gz
usr/share/man/man1/rm.1.gz
usr/share/man/man1/rmdir.1.gz
usr/share/man/man1/runcon.1.gz
usr/share/man/man1/seq.1.gz
usr/share/man/man1/sha1sum.1.gz
usr/share/man/man1/sha224sum.1.gz
usr/share/man/man1/sha256sum.1.gz
usr/share/man/man1/sha384sum.1.gz
usr/share/man/man1/sha512sum.1.gz
usr/share/man/man1/shred.1.gz
usr/share/man/man1/shuf.1.gz
usr/share/man/man1/sleep.1.gz
usr/share/man/man1/sort.1.gz
usr/share/man/man1/split.1.gz
usr/share/man/man1/stat.1.gz
usr/share/man/man1/stdbuf.1.gz
usr/share/man/man1/stty.1.gz
usr/share/man/man1/sum.1.gz
usr/share/man/man1/sync.1.gz
usr/share/man/man1/tac.1.gz
usr/share/man/man1/tail.1.gz
usr/share/man/man1/tee.1.gz
usr/share/man/man1/test.1.gz
usr/share/man/man1/timeout.1.gz
usr/share/man/man1/touch.1.gz
usr/share/man/man1/tr.1.gz
usr/share/man/man1/true.1.gz
usr/share/man/man1/truncate.1.gz
usr/share/man/man1/tsort.1.gz
usr/share/man/man1/tty.1.gz
usr/share/man/man1/uname.1.gz
usr/share/man/man1/unexpand.1.gz
usr/share/man/man1/uniq.1.gz
usr/share/man/man1/unlink.1.gz
usr/share/man/man1/users.1.gz
usr/share/man/man1/vdir.1.gz
usr/share/man/man1/wc.1.gz
usr/share/man/man1/who.1.gz
usr/share/man/man1/whoami.1.gz
usr/share/man/man1/yes.1.gz
```

可以對照執行

``` sh
pacman -Ql coreutils
```

或是對照執行

``` sh
pacman -Ql coreutils -q
```


## 更多閱讀

* Arch Wiki / [Offline installation of packages](https://wiki.archlinux.org/title/Offline_installation_of_packages)
* Arch Wiki / [Offline installation](https://wiki.archlinux.org/title/Offline_installation)
* Arch Wiki / pacman/Tips and tricks / [Custom local repository](https://wiki.archlinux.org/title/Pacman/Tips_and_tricks#Custom_local_repository)
