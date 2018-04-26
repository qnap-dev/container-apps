Schritte in Container Station:

1. Erstellen Sie ein Registry unter „Container erstellen“ > „Registry erstellen“.
2. Fügen Sie Registry der Suchliste unter „Präferenzen“ > „Registry“ > „Zufügen“ hinzu und aktivieren Sie Trust SSL. Die URL der Registry ist https://NAS_IP:6088.

Schritte am PC:Führen Sie die Befehle in folgenden Schritten in der Befehlszeile an Ihrem PC 
1. Zertifikat Ihrer Docker-Liste zufügen:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. Ein Abbild an Registry pushen:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```
