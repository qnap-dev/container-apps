Lépések a Container Station alkalmazásban:

1. Hozzon létre egy regisztert a "Create Container" > "Create Registry" pontnál.
2. Adja hozzá a regisztert a keresési lisitához a "Preferences" > "Registry" > "Add" pontnál és engedélyezze a Trust SSL-t. A regiszter URL címe: https://NAS_IP:6088.

Lépések PC-n:Futtassa a következő lépésekben leírt parancsokat a PC parancssor felületén
1. Adjon hozzá tanusítványt a Docker megbízható listájához:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. Küldjön egy képfájlt a regiszterbe:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```
