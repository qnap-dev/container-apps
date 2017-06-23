Paşi în Container Station:

1. Creaţi un registru în „Creare container” > „Creare registru”.
2. Adăugaţi registrul în lista de căutare din „Preferinţe” > „Registru” > „Adăugare” şi activaţi SSL de încredere. URL-ul pentru registru este https://NAS_IP:6088.

Paşi pe PC:Executaţi comenzile în următoarea succesiune în interfaţa cu linii de comandă de pe PC-ul dvs.
1. Adăugaţi certificatul la lista de încredere Docker:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. Transferaţi o imagine către registru:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```
