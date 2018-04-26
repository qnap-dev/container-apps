Stegen i Container Station:

1 Skapa ett register i ”Skapa behållare” > ”Skapa register”.
2 Lägg till registret i söklistan i ”Inställningar” > ”Register” > ”Lägg till” och aktivera Trust SSL. Internetadressen för registret är https://NAS_IP:6088.

Stegen på en Windows-dator:
 
Kör kommandona i följande steg i kommandoradsgränssnittet på din dator.
1 Lägg till certifikatet till Dockers lista över betrodda utgivare:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2 Överför en bild till registret:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```
