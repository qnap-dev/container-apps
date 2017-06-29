Wykonaj następujące kroki w aplikacji Container Station:

1. Utwórz rejestr, wybierając opcję „Utwórz kontener” > „Utwórz rejestr”.
2. Dodaj rejestr do listy wyszukiwania, wybierając kolejno „Preferencje” > „Rejestr” > „Dodaj”, i włącz opcję Ufaj SSL. Adres URL rejestru to https://NAS_IP:6088.

Kroki na komputerze:
 
W wierszu poleceń komputera wykonaj polecenia podane w poniższych krokach.
1. Dodaj certyfikat do listy zaufanych certyfikatów aplikacji Docker.
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. Wypchnij obraz do rejestru:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```
