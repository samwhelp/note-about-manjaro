---
title: pacman-mirrors
nav_order: 5000
has_children: false
parent: 系統環境微調
grand_parent: 微調
---


# pacman-mirrors

## 參考

* Manjaro Wiki / [Pacman-mirrors](https://wiki.manjaro.org/index.php/Pacman-mirrors#Limit_to_5_mirrors)

## Help

``` sh
man pacman-mirrors
```

``` sh
pacman-mirrors -h
```

``` sh
pacman-mirrors --help
```

## Source

* manjaro / packages / core / [pacman-mirrors](https://gitlab.manjaro.org/packages/core/pacman-mirrors)
* manjaro / applications / [pacman-mirrors](https://gitlab.manjaro.org/applications/pacman-mirrors)


## 使用範例


## fasttrack

執行

``` sh
pacman-mirrors --fasttrack
```

顯示

```
.: ERROR Must have root privileges
```

執行

``` sh
sudo pacman-mirrors --fasttrack
```

顯示

```
::INFO Downloading mirrors from Manjaro
::INFO => Mirror pool: https://repo.manjaro.org/mirrors.json
::INFO => Mirror status: http://repo.manjaro.org/status.json
::INFO Using custom mirror file
::INFO Querying mirrors - This may take some time
  0.456 Taiwan         : http://free.nchc.org.tw/manjaro/
::INFO Writing mirror list
::Taiwan          : http://free.nchc.org.tw/manjaro/stable/$repo/$arch
::INFO Mirror list generated and saved to: /etc/pacman.d/mirrorlist
```

執行下面指令，觀看「/etc/pacman.d/mirrorlist」這個檔案的內容

``` sh
cat /etc/pacman.d/mirrorlist
```

顯示

```
##
## Manjaro Linux custom mirrorlist
## Generated on 2021-06-06 16:18
##
## Please use 'pacman-mirrors -id' To reset custom mirrorlist
## Please use 'pacman-mirrors -c all' To reset custom mirrorlist
## To remove custom config run  'pacman-mirrors -c all'
##

## Country : Taiwan
Server = http://free.nchc.org.tw/manjaro/stable/$repo/$arch
```

接著就可以執行下面指令測試

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
pamac_aur.db
refresh_timestamp
```


也可以限定5個「mirrors」，執行指令如下

``` sh
sudo pacman-mirrors --fasttrack 5
```

## 指定使用所在區域

執行下面指令，根據所在區域

``` sh
sudo pacman-mirrors --geoip
```

或是執行下面指令，找到區域列表

``` sh
pacman-mirrors --country-list
```

顯示

```
Australia
Austria
Bangladesh
Belarus
Belgium
Brazil
Bulgaria
Canada
Chile
China
Costa_Rica
Czech
Denmark
Finland
France
Georgia
Germany
Global
Greece
Hong_Kong
Hungary
Iceland
India
Indonesia
Iran
Italy
Japan
Kenya
Netherlands
New_Zealand
Norway
Pakistan
Philippines
Poland
Portugal
Russia
Singapore
South_Africa
South_Korea
Spain
Sweden
Switzerland
Taiwan
Thailand
Turkey
Ukraine
United_Kingdom
United_States
Uruguay
```

接著執行下面指令，根據所在區域

``` sh
sudo pacman-mirrors --country Taiwan
```

顯示

```
::INFO Downloading mirrors from Manjaro
::INFO => Mirror pool: https://repo.manjaro.org/mirrors.json
::INFO => Mirror status: http://repo.manjaro.org/status.json
::INFO User generated mirror list
::------------------------------------------------------------
::INFO Custom mirror file saved: /var/lib/pacman-mirrors/custom-mirrors.json
::INFO Using custom mirror file
::INFO Querying mirrors - This may take some time
  0.274 Taiwan         : http://free.nchc.org.tw/manjaro/
::INFO Writing mirror list
::Taiwan          : http://free.nchc.org.tw/manjaro/stable/$repo/$arch
::INFO Mirror list generated and saved to: /etc/pacman.d/mirrorlist
::INFO To reset custom mirrorlist 'sudo pacman-mirrors -id'
::INFO To remove custom config run  'sudo pacman-mirrors -c all'
```

也可以根據多個區域，舉例

``` sh
sudo pacman-mirrors --country Taiwan,Japan,United_States
```

更多的用法請參考「Manjaro Wiki / [Pacman-mirrors](https://wiki.manjaro.org/index.php/Pacman-mirrors#Limit_to_5_mirrors)」。


## 相關路徑

* /etc/pacman-mirrors.conf
* /etc/pacman.d/mirrorlist
* /usr/share/pacman-mirrors/mirrors.json
* /var/lib/pacman-mirrors/status.json
* /var/lib/pacman-mirrors/custom-mirrors.json
* [https://repo.manjaro.org/mirrors.json](https://repo.manjaro.org/mirrors.json)
* [http://repo.manjaro.org/status.json](http://repo.manjaro.org/status.json)
