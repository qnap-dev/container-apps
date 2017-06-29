Stappen in Container Station:

1. Creëer een Register in "Container creëren" > "Register creëren".
2. Voeg het Register toe aan de zoeklijst in "Voorkeuren" > "Register" > "Toevoegen" en schakel Trust SSL in. De URL van het Register is https://NAS_IP:6088.

Stappen op de PC:

Voer de commando's in de volgende stappen in de command-line interface op uw PC uit.
1. Voeg het certificaat toe aan uw vertrouwde lijst van Docker:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. Dwing een image in het Register af:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```
