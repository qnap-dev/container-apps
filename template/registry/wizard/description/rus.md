Процедура в Container Station

1. Создайте реестр, выбрав пункты "Создать контейнер" > "Создать реестр".
2. Добавьте реестр в список поиска, выбрав пункты «Параметры» > «Реестр» > «Добавить», и включите доверенный SSL. URL-адрес реестра: https://NAS_IP:6088.

Процедура на ПКВыполните указанные ниже команды в интерфейсе командной строки на ПК.
1. Добавьте сертификат в доверенный список Docker:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. Передайте образ в реестр:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```
