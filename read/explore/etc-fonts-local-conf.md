---
title: /etc/fonts/local.conf
nav_order: 7002
has_children: false
parent: 探索
---


# /etc/fonts/local.conf


## 探索

執行

``` sh
$ cat /etc/fonts/conf.d/51-local.conf
```

顯示

```
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "urn:fontconfig:fonts.dtd">
<fontconfig>
  <description>Load local customization file</description>
	<!-- Load local system customization file -->
	<include ignore_missing="yes">local.conf</include>
</fontconfig>
```

## 相關腳本

* [相關腳本](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/adjustment/env/font-setting/typeface-serif-sans-serif-monospace)


## 相關探索


* [http://samwhelp.github.io/book-ubuntu-qna/read/howto/configure-font/fontconfig/](http://samwhelp.github.io/book-ubuntu-qna/read/howto/configure-font/fontconfig/)
* [http://samwhelp.github.io/book-ubuntu-qna/read/howto/configure-font/fontconfig/conf/local.conf.html](http://samwhelp.github.io/book-ubuntu-qna/read/howto/configure-font/fontconfig/conf/local.conf.html)
