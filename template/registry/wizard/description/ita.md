Passaggi in Container Station:

1. Creare un Registro in "Crea Container" > "Crea Registro".
2. Aggiungere il Registro all'elenco di ricerca in "Preferenze" > "Registro" > "Aggiungi" e abilitare SSL affidabile. L'URL del Registro è https://NAS_IP:6088.

Passaggi su PC:
 
Eseguire i comandi nei seguenti passaggi nell'interfaccia della riga dei comandi nel PC.
1. Aggiungere il certificato all'elenco di Docker resi affidabili:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. Spingere un'immagine nel Registro:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```
