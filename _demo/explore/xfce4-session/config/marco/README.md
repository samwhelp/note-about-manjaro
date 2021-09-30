

## Config Path

* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-session.xml](xfce4-session.xml)


## Install

Run

``` sh
killall -9 xfconfd
```

Then run

``` sh
install -Dm644 xfce4-session.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-session.xml
```


## WM

``` sh
pamac install marco mate-settings-daemon
```

> install「mate-settings-daemon」 for 「(marco:8990): GLib-GIO-ERROR **: 13:46:54.611: Settings schema 'org.mate.peripherals-mouse' is not installed」

```
$ marco --replace

(marco:8990): GLib-GIO-ERROR **: 13:46:54.611: Settings schema 'org.mate.peripherals-mouse' is not installed
Trace/breakpoint trap (core dumped)
```
