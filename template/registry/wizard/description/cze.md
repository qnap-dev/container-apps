Kroky v Container Station:

1. Vytvořte Registr pod "Vytvořit kontejner" > "Vytvořit registr".
2. Přidejte Registr do seznamu vyhledávání pod "Preference" > "Registr" > "Přidat" a povolte Trust SSL. URL registru je https://NAS_IP:6088.

Kroky na PC:
 
V rozhraní příkazového řádku na Vašem PC spusťte příkazy uvedené v následujících krocích.
1. Přidejte certifikát do svého seznamu důvěryhodných stránek Docker:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. Vložte obrázek do registru:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```
