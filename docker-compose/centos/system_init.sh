#!/bin/bash

# 网络支持
yum install net-tools -y

# ssh支持
yum install openssh-server -y
yum install passwd -y
systemctl start sshd
# 设置root密码（容器内运行）
# passwd root

# 常用软件支持
yum install vim -y

