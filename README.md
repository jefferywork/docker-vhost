
## CentOS

```shell
docker run -itd -p 722:22 -v /Users/libin/Documents/libinwork/centos7:/home --network bridge  --privileged=true --name centos7 centos:7 init
```

## Uubutu

```shell
docker run -itd -p 2022:22 -v /Users/libin/Documents/libinwork/vhost-centos/ubuntu20/home:/home --network bridge  --privileged=true --name ubuntu20 ubuntu:20.10
```
