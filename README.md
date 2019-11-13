Nginx、PHP环境部署(Windows)
===

## 目录结构
```
├─nginx1.12
│  ├─conf
│  ├─contrib
│  │  ├─unicode2nginx
│  │  └─vim
│  │      ├─ftdetect
│  │      ├─ftplugin
│  │      ├─indent
│  │      └─syntax
│  ├─docs
│  ├─html
│  ├─logs
│  └─temp
│      ├─client_body_temp
│      ├─fastcgi_temp
│      ├─proxy_temp
│      ├─scgi_temp
│      └─uwsgi_temp
├─php7.1
│  ├─dev
│  ├─ext
│  ├─extras
│  │  └─ssl
│  ├─lib
│  │  └─enchant
│  ├─logs
│  └─sasl2
├─publish
│  └─public
├─upload_tmp
└─xxfpm-master
    ├─bin
    └─src
```

## 注意：以下文件有 需要手动修改的路径位置

- 因此项目默认存放在 C:\dev 目录下，直接在C盘上创建dev目录后放入即可
- 或将 C:\dev 替换掉

```
nginx.conf ↴

php.ini ↴
    extension_dir="C:\dev..."
    upload_tmp_dir="C:\dev..."

cgi_switch.bat ↴
```


## 双击 cgi_switch.bat 以打开或关闭服务