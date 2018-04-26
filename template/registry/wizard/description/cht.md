Container Station 上的步驟

1. 前往［建立容器］>［安裝 Registry］，並建立 Registry。
2. 前往［屬性］>［倉庫伺服器］>［新增］，將倉庫註冊伺服器 (Registry) 加入搜尋清單，並選擇信任 SSL 簽署憑證。Registry 的 URL 為 https://NAS_IP:6088

PC 上的步驟
 
請在您電腦上的命令列介面上執行下列步驟中的指令。
1. 將憑證加入 Docker 信任清單：
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. 將映像檔加入 Registry：
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```
