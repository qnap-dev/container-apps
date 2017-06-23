Container Station 上的步骤:

1. 在“创建容器”>“创建注册表”创建一个注册表。
2. 在“首选项”>“注册表”>“添加”中，向搜索列表添加注册表并启用信任SSL。注册表的URL为https://NAS_IP:6088。

PC 上的步骤:在您计算机上的命令行界面运行下列步骤中的命令。
1. 将证书添加到Docker信任列表:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. 使用Push命令将映像添加到注册表:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```
