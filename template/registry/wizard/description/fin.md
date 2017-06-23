Vaiheet Container Stationissa:

1. Luo rekisteri kohdassa "Luo säilö" > "Luo rekisteri".
2. Lisää rekisteri hakulistaan kohdassa "Asetukset" > "Rekisteri" > "Lisää" ja ota Trust SSL käyttöön. Rekisterin URL-osoite on https://NAS_IP:6088.

Vaiheet PC-tietokoneessa:Suorita komennot seuraavassa vaiheessa PC-tietokoneen komentoriviliittymässä.
1. Lisää sertifikaatti Dockerin luotettujen luetteloon:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. Työnnä kuva rekisteriin:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```
