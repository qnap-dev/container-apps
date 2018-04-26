Trin i Container Station:

1. Opret en registreringsdatabase i "Opret objektbeholder" > "Opret registreringsdatabase".
2. Tilføj registreringsdatabasen til søgelisten i "Præferencer" > "Registreringsdatabase" > "Tilføj" og aktiver Hav tillid til SSL. URL for registreringsdatabasen er https://NAS_IP:6088.

Trin på pc:Kør kommandoerne i de følgende trin i kommandolinjegrænsefladen på din pc.
1. Tilføj certifikatet til din Docker tiltroede liste:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. Skubbe et billede til registreringsdatabasen:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```
