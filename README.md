# 基于 docker 的虚拟主机镜像

## docker-compose 生成容器

### 常用管理命令

```shell
# 构建所有容器
docker-compose up -d

# 构建 centos7 容器
docker-compose up -d centos7
```

### 首次进入

首次进入，你需要安装某些依赖软件，这样可以让你更好的体验容器服务。请执行以来操作完成以来安装。

#### CentOS-7

```shell
# 进入容器
docker exec -it {container_id} bash
# 执行初始化安装脚本
sh /docker-compose/system_init.sh
# 配置root密码
passwd root
```

#### Ubuntu-20

```shell
# 进入容器
docker exec -it {container_id} bash
# 执行初始化安装脚本
sh /docker-compose/system_init.sh
# 将 PermitRootLogin 的值从 withoutPassword 改为yes 允许root登陆
vi /etc/ssh/sshd_config
# 重启动ssh服务 
service ssh restart
# 配置root密码
passwd root
```

### xshell工具连接虚拟主机

当你使用 ssh 工具连接服务的时候，使用的连接信息如下

- IP：127.0.0.1
- Port：你映射的端口
- username：root
- password：你配置的密码

## docker run 命令生成容器

如果你觉得用 `docker-compose` 管理服务容器有诸多不便，你也可以考虑用 `docker run` 去管理你的服务容器

### CentOS-7

```shell
docker run -itd -p 722:22 -v $WORK_PATH/centos7:/home --network bridge  --privileged=true --name centos7 centos:7 init
```

### Uubutu-20

```shell
docker run -itd -p 2022:22 -v $WORK_PATH/vhost-centos/ubuntu20/home:/home --network bridge  --privileged=true --name ubuntu20 ubuntu:20.10
```
