
# profile


##

* Arch Wiki / [Environment variables](https://wiki.archlinux.org/index.php/environment_variables)
* Arch Wiki / Systemd / User / [Environment_variables](https://wiki.archlinux.org/index.php/Systemd/User#Environment_variables)
* Arch Wiki / Bash / [Configuration files](https://wiki.archlinux.org/index.php/Bash#Configuration_files)

## Config File Path

* [~/.profile](config/profile/.profile)


## Skel

run

``` sh
$ cat /etc/skel/.profile
```

show

```
export EDITOR=/usr/bin/nano
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
```

## Rollback


run

``` sh
$ install -m 644 /etc/skel/.profile "$HOME/.profile"
```



## Howto


### install

``` sh
$ ./install.sh
```

or

``` sh
$ make install
```


### package-install

``` sh
$ ./package-install.sh
```

or

``` sh
$ make package-install
```


### config-install

``` sh
$ ./config-install.sh
```

or

``` sh
$ make config-install
```
