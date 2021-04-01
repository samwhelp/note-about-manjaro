---
title: home-local-bin
nav_order: 7001
has_children: false
parent: 探索
---


# home-local-bin


## 探索


執行

``` sh
cat /etc/profile.d/home-local-bin.sh
```

顯示

```
export PATH="$HOME/.local/bin:$PATH"
```


執行

``` sh
env | grep ^PATH
```

顯示

```
PATH=/home/user/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/var/lib/snapd/snap/bin
```

## 實驗

執行下面指令，產生「~/.local/bin」這個資料夾。

``` sh
mkdir -p ~/.local/bin
```

執行下面指令，產生「~/.local/bin/hi.sh」這個檔案。

``` sh
cat > ~/.local/bin/hi.sh << EOF
echo hi
EOF
```

執行下面指令，設定可執行。

``` sh
chmod u+x ~/.local/bin/hi.sh
```

執行「hi.sh」。

``` sh
hi.sh
```
