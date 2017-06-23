Étapes de Container Station :

1. Créez un registre dans « Créer un conteneur » > « Créer un registre ».
2. Ajoutez le Registre à la liste de recherche dans « Préférences » > « Registre » > « Ajouter » et activez Faire confiance à SSL. L'URL du Registre est https://IP_NAS:6088.

Étapes sur PC :
 
Exécutez les commandes des étapes suivantes dans l'interface de ligne de commande sur votre PC.
1. Ajoutez le certificat à votre liste de confiance de Dockers :
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. Poussez une image vers le Registre :
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```
