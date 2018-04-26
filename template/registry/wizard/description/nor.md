Trinn i Container Station:

1. Opprett et register i "Opprett beholder" > "Opprett register".
2. Legg registeret til i søkelisten på"Innstillinger">"Register">"Legg til", og aktiver Klarer SSL. Nettadressen til registeret er https://NAS_IP:6088.

Trinn på PC:Kjør kommandoene i følgende trinn i kommandolinjegrensesnittet på PC-en.
1. Legg sertifikatet til på klareringslisten i Docker:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. Sende et bilde til registeret:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```
