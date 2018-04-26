Container Station での手順:

1. 「コンテナの作成」 > 「レジストリの作成」で、レジストリを作成します。
2.「環境設定」>「レジストリ」>「追加」の検索リストにレジストリを追加し、SSLの信頼を有効化します。レジストリのURLは、https://NAS_IP:6088です。

PC での手順:ご利用の PC のコマンドラインインターフェイスで、次の手順のコマンドを実行します。
1. 証明書を Docker 信頼済リストに追加します:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. 画像をレジストリにプッシュします:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```
