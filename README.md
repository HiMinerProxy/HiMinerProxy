# HiMinerPrroxy
# HiMinerProxy

ETH、ETC矿池代理中转最新程序`HiMinerProxy`。
网页界面操作，简单的白一键安装，小程序可以上手。可以方便地使用PID抽水，独创抽水算法，稳定标识，秒杀一切城市轻松抽水算法。
采用Golang语言开发，性能稳定优异。无视CC，自动CC防护，自动封IP。支持币地址白名单，支持统一币地址，支持 TLS/SSL/WS 加密、支持前置CDN/NGINX一切反向代理，
支持自签名证书或服务正规证书，支持安装为系统，自启动，支持守护进程，程序自动调整连接数限制。QQ交流群：885052325

飞机群：https://t.me/+X4aM84WUSC5hYjM5

##功能特色

1. 采用Golang语言开发，网络性能优异。
2. 抽水稳定，创新PID算法，不像市面上所谓的随机方法，抽水不稳定不准确。
3. 支持设置币地址白名单，矿机的提交地址，只有在白名单里面中才能连接中转端口，全方位保护中转服务。
4. 程序做了动态调整上报算力，抽水不影响矿池的统计图，抽水前后矿池算力图不会出现偏差。
5. 无视CC，自动CC防护，自动封IP，还支持手动封IP，解封IP。
6. 支持统一矿机提交币地址，有效拦截矿机内核抽水。
7. 全部web界面操作，简单易用，小白也能轻松驾驭，同时web界面还适配手机，手机上也能轻松操作。
8. 单机4核，4g，稳定带5000+矿机。
9. 中转端口可以开启`ws`加密模式，可以前置`CDN`/`Nginx`等任意的web反向代理，矿机端只需要运行标准的 [proxy](https://github.com/snail007/goproxy/blob/master/README_ZH.md) 通过tcp转发ws协议即可连接中转端口，全程加密，防止被监控。
10. 中转端口可以开启`ssl/tls`加密模式，配置域名证书和密钥，全程加密，防止被监控。
11. 支持一切基于`Stratum v1` 挖矿协议的`ETH`矿池，ssl/tls加密协议和tcp协议都支持。
12. 程序支持注册为系统服务，开机自启动，管理端口可以通过配置文件自由修改。
13. 程序还支持手动普通方式运行，此种方式支持`后台守护`参数运行。
14. 程序自动调整ulimit打开文件数限制，无需手动修改系统配置。

## 系统要求

- 系统类型：Linux: `Debian 9`及以后, `Centos 7`及以后, `Ubuntu 12`及以后。
- 依赖命令：iptables，ipset。
- 一台国外VPS，不要用国内VPS！

## 安装方式

`重要提示：因为会用到iptables，ipset，自动调整系统ulimit连接数限制，所有安装方式都需要root账号权限。`

下面针对不同人群，提供了2种安装方式，选择其中一种进行安装即可。

### 方式一：一键安装

如果是小白，可以执行下面的一键安装脚本，就把hellominer安装为了系统服务。

```shell
bash -c "$(curl -s -L https://github.com/HiMinerProxy/HiMinerProxy/raw/main/install.sh)" @ install
```

 1. 程序启动：`systemctl start hellominer`
 2. 程序停止：`systemctl stop hellominer`
 3. 程序重启：`systemctl restart hellominer`
 4. 程序状态：`systemctl status hellominer`
 5. 启动日志：`journalctl -u hellominer`
 6. 程序卸载：`/etc/hellominer/hellominer uninstall`
 7. 程序配置文件路径：`/etc/hellominer/conf`，可以通过修改`/etc/hellominer/conf/app.toml`里面的配置修改程序web管理端口。
 8. 默认管理端口是`51301`，假设你的vps的IP是，`192.168.1.1`，那么访问：`http://192.168.1.1:51301` 就可以进入管理登录页面，默认密码是：`123456`
    。进入后台后，点击右上角头像可以修改密码。

#### 更新程序

更新程序只需要复制下面命令执行即可：

`
bash -c "$(curl -s -L https://github.com/HiMinerProxy/HiMinerProxy/raw/main/install.sh)" @ update
`

#### 修改程序配置

hellominer提供了一键配置脚本只需运行：

`
bash -c "$(curl -s -L https://github.com/HiMinerProxy/HiMinerProxy/raw/main/tools.sh)"
`

### 方式二：手动安装

  1. 下载hellominer.tar.gz
  2. 执行：`mkdir /etc/hellominer` ，创建安装目录。
  3. 把文件`hellominer.tar.gz`放在目录`/etc/hellominer`下面。
  4. 执行：`cd /etc/hellominer && tar zxfv hellominer.tar.gz && ./hellominer init`
  5. 执行：`cd /etc/hellominer && ./hellominer` 即可启动，此时是前台运行，关闭ssh后，程序会被关闭，如果一切正常可以加上后台守护参数。
  6. 步骤5没问题后，建议后台守护方式运行：`cd /etc/hellominer && ./hellominer --daemon --forever --flog null`
  7. 重启程序执行：`pkill hellominer && cd /etc/hellominer && ./hellominer --daemon --forever --flog null`
  8. 配置文件目录位于：`/etc/hellominer/conf`,可以通过修改`/etc/hellominer/conf/app.toml`里面的配置，改变程序web管理端口。
  9. 默认管理端口是`51301`，假设你的vps的IP是，`192.168.1.1`，那么访问：`http://192.168.1.1:51301` 就可以进入管理登录页面，默认密码是：`123456`
   。进入后台后，点击右上角头像可以修改密码。

#### 更新程序

更新程序只需要复制下面命令执行即可：

`
cd /etc/hellominer && rm -rf hellominer hellominer.tar.gz && curl -o hellominer.tar.gz -s -L https://github.com/HiMinerProxy/HiMinerProxy/raw/main/hellominer.tar.gz && tar zxfv hellominer.tar.gz
`

更新完毕，需要程序重启，执行：`pkill hellominer && cd /etc/hellominer && ./hellominer --daemon --forever --flog null`



## 使用SSL/TLS加密

1. 准备证书文件：  
程序默认自带了自签名证书，位于`/etc/hellominer`/conf目录下面，分别是证书文件`server.crt`和私钥`server.key`,
如果需要用自己的正规证书，只需要把你的证书改名成`server.crt`，私钥文件改成`server.key`。
覆盖`/etc/hellominer`目录下面的同名文件即可。

2. 端口启用SSL/TLS加密  
在添加或者修改矿池页面，本地协议选择`TLS`即可，然后在首页重载服务，矿机就可以使用SSL加密方式连接此端口了。

## 使用截图

### 登录页面

![](https://cdn.jsdelivr.net/gh/hellominer/hellominer@main/docs/login.png)

### 修改密码

![](https://cdn.jsdelivr.net/gh/hellominer/hellominer@main/docs/changepwd.png)

### 添加矿池

![](https://cdn.jsdelivr.net/gh/hellominer/hellominer@main/docs/addpool.png)
![](https://cdn.jsdelivr.net/gh/hellominer/hellominer@main/docs/addpool2.png)

### 添加抽水账号

![](https://cdn.jsdelivr.net/gh/hellominer/hellominer@main/docs/addaccount.png)

### CC攻击管理

![](https://cdn.jsdelivr.net/gh/hellominer/hellominer@main/docs/cc.png)

### 端口统计

![](https://cdn.jsdelivr.net/gh/hellominer/hellominer@main/docs/index.png)

## 开发抽水比例

```text
根据自定义抽水情况，0.2% - 0.8% 之间。
```

## 问题交流

如果您遇到使用问题，欢迎加入QQ交流群:885052325

飞机群：https://t.me/+X4aM84WUSC5hYjM5

## 算力问题
- 首先不明白什么是算力，什么是提交份额的小白，请先补充这方面的知识。
- 其次要明白什么是按着算力百分比抽水，什么是按着提交份额百分比抽水。
- 抽0.1%的份额，需要的算力不是0.1%，它们之间没有一对一的关系，也没一定的公式计算关系。
- 0.1%的份额需要的算力和当前总算力有关，和矿机的算力大小占比有关，一般情况0.1%的份额需要的算力比0.1%算力要大。
- 本软件是抽水是按着份额百分比抽水的，可以精准控制抽水比例。
- 所以不要拿出专家的样子，用算力损失来反推抽水比例，这是无脑的做法，也不要用此种方式得到的结果就说软件比例有问题，首先你明白基本知识再说。

## 测试问题
1. 测试结论和时间，抽水是要时间的，稳定比例也需要时间，着急的`专家`不要上来几分钟，十来分钟，就说这结果不对劲啊？请至少测试1-2小时再看结果情况。
2. 后台的操作包括矿池修改，抽水账号修改后，需要首页`重载服务`才会生效。
3. 矿机登录成功，就被断开，具体表现就是矿机不断的登录成功，成功后立刻被断开,然后要看你的IP是否被监控了，顺便科普一下"监控"，它不是封你的IP，也不是重置你的tcp连接，
它是发现你的连接发送了挖矿登录的数据包，就会"动作"断开你的tcp，此种情况请你更换IP,或者使用ssl。
4. 矿机直接不能登录，连接超时，应该是IP被屏蔽了，换一个正常IP。
5. 矿机直接不能登录，连接被重置，应该是IP阻断了（换一个正常IP），或者协议不对（使用正确协议）。



