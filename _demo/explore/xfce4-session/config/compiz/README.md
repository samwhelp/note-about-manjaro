

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
