Pasos en Container Station:

1. Crear un registro en "Crear contenedor" > "Crear registro".
2. Añada el registro a la lista de búsqueda en "Preferencias" > "Registro" > "Añadir" y habilite SSL de confianza. La dirección URL del registro es https://NAS_IP:6088.

Pasos en un PC:
 
Ejecute los comandos de los siguientes pasos en la interfaz de la línea de comandos de su PC.
1. Añada el certificado a su lista de confianza de Docker:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. Inserte una imagen en el registro:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```
