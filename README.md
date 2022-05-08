# HiMinerPrroxy

## 更新日志

### v4.3
- 修复TRM内核无法使用的问题。
- 新增XMR币支持。

### v4.2
- 新增黑名单机制，可以阻止或者替换黑名单里面的币地址，用于替换内核抽水，或者阻止未知矿机连接。
- 优化矿池列表,矿池新增修改，抽水账号新增修改，均加上了严谨的判断，防止误操作。
- 修复了抽水账号如果配置错误，无法修改的问题。
- 兼容模式新增了抽水算法"准实时模式3"。

### v4.1
- 抽水模式增加到了三种，覆盖了不同显卡机器，不同专业机器，不同币种用到的场景。
- 优化抽水算法，彻底解决在大算力，机器多，抽水比例大的情况下，抽不够的问题。
- ETH/ETC同池模式，新增"币印"支持。
- 修复在线列表某些情况下状态不准确的问题。
- 修复了删除离线机器的有可能不彻底的问题。

### v4.0 重构核心，多协议，多币种支持
- 新增币种ERG，BTC，TON，RVN，LTC挖矿代理和抽水支持。
- 支持ETH和TON双挖，配置方法欢迎进群咨询。
- 新增nicehash协议支持，代理端口新增兼容模式和默认模式，专业机，芯片机全支持。
- 后台操作优化，可以实现端口级别的新增和删除同步服务的新增和删除，避免添加或者删除端口后，重载服务的时候影响其它端口服务。
- 新增首页API功能，外部通过API获取当前首页列表数据。
- 新增集群显示，可以汇总多个hellominer节点首页数据，汇总到一个页面显示。
- 首页列表，多项优化，新增：代理端口，代理模式，协议，币种。
- 抽水力度最大值放开，最大可以达到100。
- 新增抽水模式选择，正常模式（平稳），补偿模式（抽水优先）。

### v3.2
- CC防护功能，封IP时间调整为永久不过期。
- 优化了CC智能策略，更精准。

### v3.1 
- 加入智能CC防御策略，管你什么模拟矿机，肆意TCP连接，通通自动识别，自动封锁恶意IP。
- 后台白名单和统一地址策略调整，开启统一功能，还可以设置白名单作为不统一的地址。
- 提交份额，快速成功回复。
- CC封锁IP数据自动保存，重启程序不丢，重启服务器不丢。
- 修复因为修改了CC封锁时间，程序不能启动的问题。

### v3.0 强势发布
- 重写代理核心代码，采用新算法，矿机稳定长时间在线不掉线，抽水前后矿池本地算力图无损失！
- 监控矿机多久不提交份额，就断开矿机连接，可以在配置文件开启，并配置时间。
- 监控矿机多久不提交算力，就断开矿机，可以在配置文件开启，并配置时间。
- 监控矿机多久没收到矿池任务，就断开矿机，可以在配置文件开启，并配置时间。
- 抽水账号算力图平滑稳定，拜拜心电图！
- 后台矿池开放抽水力度人为调整选项，可以避免过抽或者抽不够的问题！

### v2.6
- 修复抽水账号拒绝过高的问题。

### v2.5  
- 新增矿机地址统计，可以发现内核抽水，或者病毒地址。
- 优化抽水，矿池本地算力不丢不抖动。
- 内置矿池地址新增f2pool矿池6个ssl地址。

### v2.4
- 首页新增矿池延迟，移除抽水份额数。
- 优化矿池连接，增加重试，提升稳定性。
- 首页新增矿机地址端口。

# HiMinerProxy

ETH、ETC矿池代理中转最新程序`HiMinerProxy`。
专业矿池代理，支持`ETH`/`ETC`/`BTC`/`TON`/`ERG`/`RVN`/`LTC`，
Web界面操作，简单易用，一键安装，小白可以轻松上手。可以自定义抽水，独创PID抽水算法，稳定精准，秒杀一切市面上随机抽水算法。完美适配各种专业机芯片机。
采用Golang语言开发，性能稳定优异。无视CC，自动CC防护，自动封IP。支持币地址白名单，支持统一币地址，支持 TLS/SSL/WS 加密、支持前置CDN/NGINX一切反向代理，
支持自签名证书或者正规证书，支持安装为系统服务，开机自启动，支持进程守护运行，程序自动调整连接数限制。QQ交流群：885052325

飞机群：https://t.me/+X4aM84WUSC5hYjM5

##功能特色

1. 支持主流币种：ETH、ETC、BTC、TON、ERG、RVN、LTC，后续支持更多，欢迎进群反馈。
2. 抽水稳定，创新PID算法，不过抽，不少抽，不像市面上所谓的随机方法，抽水不稳定不准确。
3. 特有的同池模式，专业机器DAG文件不重新下载，实测完美支持：凤凰ETC芯片机，A11-ETH专业机。
4. 兼容模式，实测支持：神马BTC专业机，蚂蚁E7-BTC专业机。
5. 支持ETH和TON双挖，配置方法欢迎进群咨询。
6. 多种挖矿协议支持，完美支持nicehash，stratum。
7. 无视CC，自动CC防护，自动封IP，还支持手动封IP，解封IP。
8. 支持设置币地址白名单，矿机的提交地址，只有在白名单里面中才能连接中转端口，全方位保护中转服务。
9. 支持统一矿机提交币地址，有效拦截矿机内核抽水。
10. 采用Golang语言开发，网络性能优异。
11. 全部web界面操作，简单易用，小白也能轻松驾驭，同时web界面还适配手机，手机上也能轻松操作。
12. 单机4核，4g，稳定带5000+矿机。
13. 中转端口可以开启`ws`加密模式，可以前置`CDN`/`Nginx`等任意的web反向代理，矿机端只需要运行加密隧道客户端 [Minernat-Windows-](https://github.com/HiMinerProxy/Minernat-Windows-) 即可连接`ws`中转端口，全程加密，防止被监控。
14. 中转端口可以开启`ssl/tls`加密模式，配置域名证书和密钥，全程加密，防止被监控。
15. 支持ssl/tls加密协议和tcp协议。
16. 程序支持注册为系统服务，开机自启动，管理端口可以通过配置文件自由修改。
17. 程序还支持手动普通方式运行，此种方式支持`后台守护`参数运行。
18. 程序自动调整ulimit打开文件数限制，无需手动修改系统配置。

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

具体程序的`启动`，`停止`，`重启`，`状态`命令如下：

1. 程序启动：`systemctl start himinerproxy`
2. 程序停止：`systemctl stop himinerproxy`
3. 程序重启：`systemctl restart himinerproxy`
4. 程序状态：`systemctl status himinerproxy`
5. 启动日志：`/etc/himinerproxy/himinerproxy logs`
6. 程序卸载：`/etc/himinerproxy/himinerproxy uninstall`
7. 程序配置文件路径：`/etc/himinerproxy/conf`，可以通过修改`/etc/himinerproxy/conf/app.toml`里面的配置修改程序web管理端口。
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

## ETH TON 双挖注意事项
### ETH TON 双挖现已完美支持，但有一定限制.请仔细阅读以下说明并按照要求配置

1.Windows下支持ETH TON双挖的内核有 `teamredminer` [下载地址](https://github.com/todxx/teamredminer/releases/) 请在命令行参数中添加 `--ton_pool_mode=icemining`

2.由于不同TON矿池所用协议不同，目前TON只支持内置的`TON Whales`矿池地址，请勿手动添加其他地址

3.使用双挖时务必将ETH代理模式调整为`兼容模式`！！！

### teamredminer 实例说明：

`teamredminer.exe -a ethash -o stratum+tcp://[ETH代理IP:端口] -u [ETH钱包地址].[矿机名] -p x --ton -o stratum+tcp://[TON代理IP:端口] -u [TON钱包地址].[矿机名] -p x --ton_pool_mode=icemining --ton_end`

注意使用实际真实地址后，不要带[ ]。

## 使用截图


### 登录页面

![](https://github.com/HiMinerProxy/HiMinerProxy/blob/main/images/QQ%E6%88%AA%E5%9B%BE20220420144027.png)

### 修改密码

![](https://cdn.jsdelivr.net/gh/hellominer/hellominer/docs/changepwd.png)

### 添加矿池

![](https://github.com/HiMinerProxy/HiMinerProxy/blob/main/images/QQ%E6%88%AA%E5%9B%BE20220420144113.png)
![](https://github.com/HiMinerProxy/HiMinerProxy/blob/main/images/QQ%E6%88%AA%E5%9B%BE20220420144121.png)

### 添加抽水账号

![](https://github.com/HiMinerProxy/HiMinerProxy/blob/main/images/QQ%E6%88%AA%E5%9B%BE20220420144135.png)

### CC攻击管理

![](https://github.com/HiMinerProxy/HiMinerProxy/blob/main/images/QQ%E6%88%AA%E5%9B%BE20220420145855.png)

### 端口统计

![](https://github.com/HiMinerProxy/HiMinerProxy/blob/main/images/QQ%E6%88%AA%E5%9B%BE20220420145924.png)

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



