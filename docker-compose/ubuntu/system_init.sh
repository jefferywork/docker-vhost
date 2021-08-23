#!/bin/bash

# 网络支持
apt-get update
apt install net-tools -y

# ssh 支持
apt install openssh-server -y
apt-get install openssh-client -y
service ssh start
# vi /etc/ssh/sshd_config # 将 PermitRootLogin 的值从 withoutPassword 改为yes 允许root登陆
# service ssh restart # 重启动ssh服务 
# 设置root密码（容器内运行）
# passwd root

# 常用软件支持
apt install vim -y